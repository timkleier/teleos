class ForceCreateFrameworkUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :Framework, :uuid, force: true
  end

  def down
    drop_constraint :Framework, :uuid
  end
end
