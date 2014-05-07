namespace :db do
  task :production_setup => :environment do
      puts 'Create Database'
      Rake::Task['db:create'].invoke
      puts 'Migrations'
      Rake::Task['db:migrate'].invoke
      puts 'Seed Data'
      Rake::Task['db:seed'].invoke
  end
end