class ForceCreateContentSourceUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :ContentSource, :uuid, force: true
  end

  def down
    drop_constraint :ContentSource, :uuid
  end
end
