# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating user...'

test_user = User.create!({
  email: 'testdummy@gmail.com',
  password: 'password',
  password_confirmation: 'password'
})

puts 'user created'
puts 'creating car...'

Car.create({
  title: 'Electric car',
  description: 'very fast car',
  model: 'Tesla',
  brand: 'Model 3',
  year: 2019,
  user: test_user,
})

print 'car created'
