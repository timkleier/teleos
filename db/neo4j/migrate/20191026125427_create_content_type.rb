class CreateContentType < Neo4j::Migrations::Base
  def up
    add_constraint :ContentType, :uuid
  end

  def down
    drop_constraint :ContentType, :uuid
  end
end
