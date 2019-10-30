class CreateContentItem < Neo4j::Migrations::Base
  def up
    add_constraint :ContentItem, :uuid
  end

  def down
    drop_constraint :ContentItem, :uuid
  end
end
