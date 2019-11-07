class ContentItem
  include Neo4j::ActiveNode
  # include Nestable
  property :title, type: String
  property :description, type: String
  property :authors, type: String

  has_many :out, :content_sources, type: :HAS_CONTENT_SOURCE

  # attr_accessor :content_sources
  #
  # def content_sources_attributes=(attributes)
  #   byebug
  #   content_sources = []
  #   attributes.each do |i, content_sources_params|
  #     content_sources << ContentSource.create(content_sources_params)
  #   end
  #   self.content_sources = content_sources
  #   byebug
  #   self.save
  #   byebug
  # end

  # accepts_nested_attributes_for :content_sources

end
