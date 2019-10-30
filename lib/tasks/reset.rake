desc 'reset the db'

namespace :db do
  task :reset => :environment do
    puts 'Resetting DB'
    system("rake neo4j:reset_yes_i_am_sure[#{:environment}]")

    puts 'Migrating DB'
    system("rake neo4j:migrate")

    puts 'Seeding DB'
    system("rake db:seed")
  end
end
