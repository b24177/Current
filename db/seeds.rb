# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting previous records of users and cars"

Car.delete_all
User.delete_all

puts "Generating new users and cars"

puts 'Creating users...'

user1 = User.create!({
  email: 'itsMeMario@gmail.com',
  password: 'password',
  password_confirmation: 'password'
})
user2 = User.create!({
  email: 'iLikeCars@yahoo.com',
  password: '1234',
  password_confirmation: '1234'
})
user3 = User.create!({
  email: 'anonymous@outlook.com',
  password: 'iLikeApples123',
  password_confirmation: 'iLikeApples123'
})

puts 'users created'

puts 'creating cars...'

def create_car(description, model, brand, year, price, user, file_path, file_name)
  car = Car.new({
      title: "#{brand} #{model}",
      description: description,
      model: model,
      brand: brand,
      year: year,
      price: price,
      user: user,
    })
  car.photo.attach(io: File.open(file_path), filename: file_name, content_type: 'image/jpg')
  car.save
end

create_car('the first fully electric compact SUV in Europe','Kona Electric', 'Hyundai', 2020, 100, user1,  'app/assets/images/konaElectric.jpg', 'konaElectric.jpg')
# create_car('was the world\'s top selling electric car until 2020','Leaf', 'Nissan', 2020, 100, user2, 'app/assets/images/leaf.jpg', 'leaf.jpg')
# create_car('an electric vehicle that won’t cost enthusiasts their souls','SE Electric Hardtop', 'Mini Cooper', 2020, 100, user3, 'app/assets/images/minicooperSE.jpg', 'minicooperSE.jpg')
create_car('basically made of plastic','i3', 'BMW', 2020, 100, user1, 'app/assets/images/i3.jpg', 'i3.jpg')
create_car('basically made of plastic','i8', 'BMW', 2020, 100, user3, 'app/assets/images/i3.jpg', 'i3.jpg')
# create_car('Crossover SUV','Niro EV', 'Kia', 2020, 100, user2, 'app/assets/images/niroEV.jpg', 'niroEV.jpg')
# create_car('doesn\'t look too bad for an Opel','Corsa-e', 'Opel', 2020, 100, user3, 'app/assets/images/corsa-e.jpg', 'corsa-e.jpg')
# create_car('one of the most efficient in its class','Ioniq Electric', 'Hyundai', 2020, 100, user1, 'app/assets/images/ioniqE.jpg', 'ioniqE.jpg')
create_car('the first electric car from Jaguar','I-Pace', 'Jaguar', 2020, 100, user2, 'app/assets/images/i-pace.jpg', 'i-pace.jpg')
create_car('tech geek but also a family man','Model X', 'Tesla', 2020, 100, user3, 'app/assets/images/modelX.jpg', 'modelX.jpg')
# create_car('your best choice if you don\'t like Tesla','e-tron', 'Audi', 2020, 100, user1, 'app/assets/images/e-tron.jpg', 'e-tron.jpg')
create_car('you like living in the fast lane','Taycan', 'Porsche', 2020, 100, user2, 'app/assets/images/taycan.jpg', 'taycan.jpg')
create_car('tech geeks first choice','Model 3', 'Tesla', 2020, 100, user3, 'app/assets/images/model3.jpg', 'model3.jpg')
create_car('became the first electric car to top the monthly new-car-sales ranking in any country in 2013','Model S', 'Tesla', 2020, 100, user2, 'app/assets/images/modelS.jpg', 'modelS.jpg')
# create_car('basically an e-Golf but bigger','ID.3', 'Volkswagen', 2020, 100, user1, 'app/assets/images/ID3.jpg', 'ID3.jpg')
# create_car('sees right through your soul','e', 'Honda', 2020, 100, user2, 'app/assets/images/honda-e.jpg', 'honda-e.jpg')
# create_car('best selling EV in Europe according to Renault','Zoe', 'Renault', 2020, 100, user3, 'app/assets/images/zoe.jpg', 'zoe.jpg')
#create_car('a small EV perfect for city driving','e-Up', 'Volkswagen', 2020, 100, user1, 'app/assets/images/E-Up.jpg', 'E-Up.jpg')
# create_car('for those who want to really show off','EP9', 'Nio', 2020, 100, user2, 'app/assets/images/EP9.jpg', 'EP9.jpg')

print 'seeding done successfully!'

