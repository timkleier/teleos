class ContentItem
  include Neo4j::ActiveNode
  include Nestable
  property :title, type: String
  property :description, type: String
  property :authors, type: String

  has_many :in, :content_sources, type: :HAS_CONTENT_SOURCE, dependent: :delete_orphans

  accepts_nested_attributes_for :content_sources

end
