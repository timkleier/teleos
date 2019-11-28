class ContentSource
  include Neo4j::ActiveNode
  property :url, type: String
  property :host, type: String
  property :display_name, type: String
  property :root_url, type: String
  property :feed, type: String
  property :title, type: String
  property :description, type: String
  property :image, type: String

  has_one :in, :content_item, type: :BELONGS_TO_CONTENT_ITEM
  has_one :out, :content_type, type: :BELONGS_TO_CONTENT_TYPE

  before_create :parse_source

  private

  def parse_source
    retrieve_metadata
    construct_display_name
  end

  def construct_display_name
    self.display_name = display_name_mapper
  end

  def display_name_mapper
    case host
      when 'books.google.com' then 'Google Books'
      when 'www.amazon.com' then 'Amazon'
      when 'podcasts.apple.com' then 'Apple Podcasts'
      when 'www.audible.com' then 'Audible'
      else host
    end
  end

  def metainspector_fields
    %w[root_url title description feed host]
  end

  def retrieve_metadata
    meta_source = MetaInspector.new(url)
    metainspector_fields.each{|attr| send("#{attr}=", meta_source.send(attr))}
    self.image = meta_source.images.best
  end
end
