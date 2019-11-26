class Framework
  include Neo4j::ActiveNode
  property :title, type: String
  property :description, type: String

  has_many :out, :content_sources, type: :HAS_CONTENT_SOURCE
  has_many :out, :tags, type: :HAS_TAG

  def tag_children(tag_id = nil)
    tag_id ? Tag.find(tag_id)&.children : tags[0].children
  end

  def content_items_for_tag(tag_id = nil)
    tag_id ? Tag.find(tag_id).content_items : []
  end
end
