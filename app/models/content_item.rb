class ContentItem
  include Neo4j::ActiveNode
  property :title, type: String
  property :description, type: String
  property :authors, type: String

  has_many :in, :content_sources, type: :HAS_CONTENT_SOURCE, dependent: :delete_orphans
  has_one :out, :content_type, type: :HAS_CONTENT_TYPE
end
