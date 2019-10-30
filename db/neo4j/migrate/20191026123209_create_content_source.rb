class CreateContentSource < Neo4j::Migrations::Base
  def up
    add_constraint :ContentSource, :uuid
  end

  def down
    drop_constraint :ContentSource, :uuid
  end
end
