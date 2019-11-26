class ForceCreateTagUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :Tag, :uuid, force: true
  end

  def down
    drop_constraint :Tag, :uuid
  end
end
