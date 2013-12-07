=begin
For testing only.
Remove after testing.
=end

fp = File.new("#{Rails.root}/tmp/auth.txt", "w")


namespace :db do
  desc "Erase and populate database"
  task :populate => :environment do

    require 'active_support' # For Time operations

    Rake::Task['db:reset'].invoke
      50.times do
        girl = Girl.create(
          :name => temp_name = Faker::Name.name
          )
      end

      puts ">> Creating user for acessing the system"
      user = User.new(email: 'akashdevaraju@gmail.com', password: 'password')
      user.save

      puts ">> Girls added to the system"
      girls = Girl.all.map { |girl| { id: girl.id, name: girl.name } }
      Formatador.display_table(girls)

      puts ">> Please login using the following credentials"
      user = User.all.map { |user| { email: user.email, password: "password" } }
      Formatador.display_table(user)
  end
end
