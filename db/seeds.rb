require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
Event.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('events')
Attendance.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('attendances')


10.times do |x|
  e = Event.create(start_date: Faker::Date.forward(4), duration: rand(1..96)*5, title: Faker::Book.title, description: Faker::TvShows::GameOfThrones.quote, price: rand(1..1000), location: Faker::Address.city)
puts " #{e.start_date} "
end
20.times do |x|
  u = User.create(email: Faker::Name.first_name+"yopmail.com", description: Faker::TvShows::SouthPark.quote, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  puts "#{u.last_name}"
end
  5.times do |x|
    a = Attendance.create(stripe_costumer_id: Faker::Stripe.valid_card)
    puts " #{a.stripe_costumer_id} "
  end
