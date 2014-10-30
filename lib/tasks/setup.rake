task :setup do
  puts "** Starting setup..."

  puts "** Copying DB Credentials..."
  run "cp config/database.yml.example config/database.yml"

  puts "** Creating database..."
  Rake::Task["db:create"].invoke

  puts "** Migrating database..."
  Rake::Task["db:migrate"].invoke

  puts "** Seeding database..."
  Rake::Task["db:seed"].invoke

  puts "** Setup complete!"
end