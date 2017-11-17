namespace :rake_test do
  namespace :name_check do

    desc 'validates name is present'
    task :name do |args|
      puts "This name is present: #{args[:name]}"
    end

    desc 'finds the name'
    task :display_name, [:name] do
      puts 'Name may not be present:'
    end

    desc 'display name'
    task :display_name do
      Rake::Task['rake_test:name_check:display_name'].invoke(:name)
    end
  end
end