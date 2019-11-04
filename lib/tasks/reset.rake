desc 'reset the db'

namespace :db do
  task :reset => :environment do
    puts 'Resetting DB'
    system("rake neo4j:reset_yes_i_am_sure[#{:environment}]")

    puts 'Deleting DB Data'
    Neo4j::ActiveBase.query('MATCH (n) OPTIONAL MATCH (n)-[r]-() DELETE n,r')
    Neo4j::Core::Label.drop_uniqueness_constraints_for(Neo4j::ActiveBase.current_session)
    Neo4j::Core::Label.drop_indexes_for(Neo4j::ActiveBase.current_session)

    puts 'Migrating DB'
    system("rake neo4j:migrate")

    puts 'Seeding DB'
    system("rake db:seed")
  end
end
