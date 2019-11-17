class ContentSource
  include Neo4j::ActiveNode
  property :url, type: String
  property :host, type: String
  property :display_name, type: String

  has_one :in, :content_item, type: :BELONGS_TO_CONTENT_ITEM
  has_one :out, :content_type, type: :BELONGS_TO_CONTENT_TYPE

  before_create :parse_source

  private

  def parse_source
    uri = URI(self.url)
    display_name = display_name_mapper(uri.host)
    self.display_name = display_name || uri.host
  end

  def display_name_mapper(host)
    case host
      when 'books.google.com' then 'Google Books'
      when 'www.amazon.com' then 'Amazon'
      when 'podcasts.apple.com' then 'Apple Podcasts'
      when 'www.audible.com' then 'Audible'
    end
  end
end
