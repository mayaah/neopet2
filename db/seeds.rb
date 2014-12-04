# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email

#u = User.create! name: 'Jon', email: 'jon@jon.com', password: 'password'

pet_colors = %w(White Black Blue Red Yellow Orange Purple)

%w(Shoryu Poogle Kiko Scorchio Draik).each do |name|
  Pet.create name: name, color: pet_colors.shuffle[0], hunger: 50, loyalty: 50
end

# %w(Warf Puppyblew Angelpuss Buzzer Spardel).each do |name|
#   Petpet.create name: name, color: 'Yellow'
# end

