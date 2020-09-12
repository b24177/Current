# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting previous records of users and cars"

Booking.delete_all
Car.delete_all
User.delete_all

puts "Generating new users and cars"

puts 'Creating users...'

user1 = User.create!({
  email: 'testUser@gmail.com',
  password: 'password',
  password_confirmation: 'password'
})
user2 = User.create!({
  email: 'iLikeCars@yahoo.com',
  password: 'password',
  password_confirmation: 'password'
})
user3 = User.create!({
  email: 'anonymous@outlook.com',
  password: 'something',
  password_confirmation: 'something'
})

puts 'users created'

puts 'creating cars...'

def attach_photos(car, images = [])
  images.each do |image|
    car.photos.attach(io: File.open(image), filename: image , content_type: 'image/jpg')
  end
end

def create_car(attributes = {})
  images = Dir.glob("#{attributes[:folder]}/*.jpg")
  car = Car.new({
      title: "#{attributes[:brand]} #{attributes[:model]}",
      description: attributes[:description],
      model: attributes[:model],
      brand: attributes[:brand],
      year: attributes[:year],
      price: attributes[:price],
      range: attributes[:range],
      address: attributes[:address],
      user: attributes[:user]
    })
  attach_photos(car, images)
  car.save
end

create_car(description: 'the first fully electric compact SUV in Europe', model: 'Kona Electric', brand: 'Hyundai', year:  2020, price:  100, user:  user1, folder: 'app/assets/images/kona', range: 484, address: 'Dyegata 43, Sande 3070')
# create_car('was the world\'s top selling electric car until 2020','Leaf', 'Nissan', 2020, 100, user2, 'app/assets/images/leaf.jpg', 'leaf.jpg')
# create_car('an electric vehicle that won’t cost enthusiasts their souls','SE Electric Hardtop', 'Mini Cooper', 2020, 100, user3, 'app/assets/images/minicooperSE.jpg', 'minicooperSE.jpg')
create_car(description: 'basically made of plastic', model: 'i3', brand: 'BMW', year: 2020, price: 100, user: user1, folder: 'app/assets/images/i3', range: 130)
create_car(description: 'actually a hybrid', model: 'i8', brand: 'BMW', year: 2020, price: 100, user: user3, folder: 'app/assets/images/i8', range: 37)
# create_car('Crossover SUV','Niro EV', 'Kia', 2020, 100, user2, 'app/assets/images/niroEV.jpg', 'niroEV.jpg')
# create_car('doesn\'t look too bad for an Opel','Corsa-e', 'Opel', 2020, 100, user3, 'app/assets/images/corsa-e.jpg', 'corsa-e.jpg')
# create_car('one of the most efficient in its class','Ioniq Electric', 'Hyundai', 2020, 100, user1, 'app/assets/images/ioniqE.jpg', 'ioniqE.jpg')
create_car(description: 'the first electric car from Jaguar', model: 'I-Pace', brand: 'Jaguar', year: 2020, price: 100, user: user2, folder: 'app/assets/images/i-pace', range: 430)
create_car(description: 'tech geek but also a family man', model: 'Model X', brand: 'Tesla', year: 2020, price: 100, user: user3, folder: 'app/assets/images/model x', range: 497)
# create_car('your best choice if you don\'t like Tesla','e-tron', 'Audi', 2020, 100, user1, 'app/assets/images/e-tron.jpg', 'e-tron.jpg')
create_car(description: 'you like living in the fast lane', model: 'Taycan', brand: 'Porsche', year: 2020, price: 100, user: user2, folder: 'app/assets/images/taycan', range: 400)
create_car(description: 'tech geeks first choice', model: 'Model 3', brand: 'Tesla', year: 2020, price: 100, user: user3, folder: 'app/assets/images/model 3', range: 354)
create_car(description: 'became the first electric car to top the monthly new-car-sales ranking in any country in 2013', model: 'Model S', brand: 'Tesla', year: 2020, price: 100, user: user2, folder: 'app/assets/images/model s', range: 520)
# create_car('basically an e-Golf but bigger','ID.3', 'Volkswagen', 2020, 100, user1, 'app/assets/images/ID3.jpg', 'ID3.jpg')
# create_car('sees right through your soul','e', 'Honda', 2020, 100, user2, 'app/assets/images/honda-e.jpg', 'honda-e.jpg')
# create_car('best selling EV in Europe according to Renault','Zoe', 'Renault', 2020, 100, user3, 'app/assets/images/zoe.jpg', 'zoe.jpg')
#create_car('a small EV perfect for city driving','e-Up', 'Volkswagen', 2020, 100, user1, 'app/assets/images/E-Up.jpg', 'E-Up.jpg')
# create_car('for those who want to really show off','EP9', 'Nio', 2020, 100, user2, 'app/assets/images/EP9.jpg', 'EP9.jpg')

print 'seeding done successfully!'
