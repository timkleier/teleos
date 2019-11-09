class ContentItem
  include Neo4j::ActiveNode
  # include Nestable
  property :title, type: String
  property :description, type: String
  property :authors, type: String

  has_many :out, :content_sources, type: :HAS_CONTENT_SOURCE

  attr_accessor :content_sources_attributes

  def content_sources_attributes=(attributes)
    self.content_sources = []
    attributes.each do |i, content_sources_params|
      self.content_sources << ContentSource.create(content_sources_params)
    end
  end

end
