class CreateFramework < Neo4j::Migrations::Base
  def up
    add_constraint :Framework, :uuid
  end

  def down
    drop_constraint :Framework, :uuid
  end
end
