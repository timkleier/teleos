class ContentType
  include Neo4j::ActiveNode
  property :name, type: String

  has_many :in, :content_items, type: :HAS_CONTENT_ITEM
end
