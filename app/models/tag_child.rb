class TagChild
  include Neo4j::ActiveRel

  from_class :Tag
  to_class   :Tag

  property :depth, type: Integer
end
