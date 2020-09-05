# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting previous records of users and cars"

User.delete_all
Car.delete_all

puts "Generating new users and cars"

puts 'Creating users...'

user1 = User.create!({
  email: '@gmail.com',
  password: 'password',
  password_confirmation: 'password'
})
user2 = User.create!({
  email: 'mr@yahoo.com',
  password: 'length_is_the_most_important_thing_when_choosing_a_password',
  password_confirmation: 'length_is_the_most_important_thing_when_choosing_a_password'
})
user3 = User.create!({
  email: 'anonymous@outlook.com',
  password: 'iLikeApples123',
  password_confirmation: 'iLikeApples123'
})

puts 'users created'

puts 'creating cars...'

def create_car(description, model, brand, year, user)
  car = Car.new({
    title: "#{brand} #{model}",
    description: description,
    model: model,
    brand: brand,
    year: year,
    user: user,
  })
  # car.photo.attach(io: file, filename: '', content_type: 'image/png')
  car.save
end

create_car('the first fully electric compact SUV in Europe','Kona Electric', 'Hyundai', 2020, user1)
create_car('was the world\'s top selling electric car until 2020','Leaf', 'Nissan', 2020, user2)
create_car('an electric vehicle that won’t cost enthusiasts their souls','SE Electric Hardtop', 'Mini Cooper', 2020, user3)
create_car('basically made of plastic','i3', 'BMW', 2020, user1)
create_car('Crossover SUV''Niro EV', 'Kia', 2020, user2)
create_car('doesn\'t look too bad for an Opel','Corsa-e', 'Opel', 2020, user3)
create_car('one of the most efficient in its class','Ioniq Electric', 'Hyundai', 2020, user1)
create_car('the first electric car from Jaguar','I-Pace', 'Jaguar', 2020, user2)
create_car('tech geek but also a family man','Model X', 'Tesla', 2020, user3)
create_car('your best choice if you don\'t like Tesla','e-tron', 'Audi', 2020, user1)
create_car('you like living in the fast lane','Taycan', 'Porsche', 2020, user2)
create_car('tech geeks first choice','Model 3', 'Tesla', 2020, user3)
create_car('became the first electric car to top the monthly new-car-sales ranking in any country in 2013','Model S', 'Tesla', 2020, user2)
create_car('basically a Golf but bigger','ID.3', 'Volkswagen', 2020, user1)
create_car('sees right through your soul','e', 'Honda', 2020, user2)
create_car('best selling EV in Europe according to Renault','Zoe', 'Renault', 2020, user3)
create_car('a small EV perfect for city driving','e-Up', 'Volkswagen', 2020, user1)
create_car('for those who want to really show off','EP9', 'Nio', 2020, user2)

print 'seeding done successfully!'

