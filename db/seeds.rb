# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'Seeding a couple of default users'
user = User.create! :name => 'Apple', :email => 'apple@fruits.com', :password =>'Fruitsaregreat', :password_confirmation => 'Fruitsaregreat'
puts 'New fruit is in the basket' << user.name
user2 = User.create! :name => 'Banana', :email => 'banana@fruits.com', :password => 'Yellowandcurvy', :password_confirmation => 'Yellowandcurvy'
puts 'New fruit is in the basket' << user2.name


puts 'Now adding the seeds for the menus'
menuItem1 = MenuItem.create! :name => 'Fried Egg', :price => 12.30, :description => 'Egg = Fried'
menuItem2 = MenuItem.create! :name => 'Boiled Egg', :price => 8.30, :description => 'Egg = Boiled'

puts 'Now adding seeds for cutomization '
modifier1 = Modifier.create! :name => 'Add Green Onion', :deltaPrice => 2.30
modifier2 = Modifier.create! :name => 'No Onion', :deltaPrice => -0.30