class ContentType
  include Neo4j::ActiveNode
  property :name, type: String

  CONTENT_TYPES = ['Text', 'Audio', 'Video']

  has_many :in, :content_sources, type: :HAS_CONTENT_SOURCE, dependent: :delete_orphans
end
