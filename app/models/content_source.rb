class ContentSource
  include Neo4j::ActiveNode
  property :url, type: String

  has_one :in, :content_item, type: :BELONGS_TO_CONTENT_ITEM
  has_one :out, :content_type, type: :BELONGS_TO_CONTENT_TYPE
end
