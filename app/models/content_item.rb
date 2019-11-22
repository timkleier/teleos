class ContentItem
  include Neo4j::ActiveNode
  # include Nestable
  property :title, type: String
  property :description, type: String
  property :authors, type: String

  has_many :out, :content_sources, type: :HAS_CONTENT_SOURCE
  has_many :both, :related_items, type: :HAS_RELATED_ITEM, model_class: ContentItem
  has_many :out, :tags, type: :HAS_TAG

  attr_accessor :content_sources_attributes, :content_type_attributes

  def content_sources_attributes=(attributes)
    self.content_sources = []
    attributes.each do |i, content_sources_params|
      content_source = ContentSource.new(content_sources_params)
      content_source.content_type = ContentType.find_by(name: content_sources_params['content_type'])
      self.content_sources << content_source
    end
  end

  def content_types
    content_sources.with_associations(:content_type).map(&:content_type)
  end

  def content_type_names
    content_types.map(&:name).uniq
  end
end
