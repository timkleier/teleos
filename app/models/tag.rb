class Tag
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :in, :parent, rel_class: :TagChild
  has_many :out, :children, rel_class: :TagChild
  has_one :in, :framework, type: :HAS_FRAMEWORK
  has_many :in, :content_items, type: :HAS_CONTENT_ITEM
end
