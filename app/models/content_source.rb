class ContentSource
  include Neo4j::ActiveNode
  property :url, type: String

  has_one :out, :content_item, type: :HAS_CONTENT_ITEM
end
