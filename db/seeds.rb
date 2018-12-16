# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Business.destroy_all

user1 = User.create!(email: 'demo@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo1@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo2@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo3@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo4@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo5@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo6@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo7@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo8@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')
User.create!(email: 'demo9@guest.com', password: 'password', first_name: 'Guest', last_name: 'User', zipcode: '12345')

# boba businesses
Business.create!(
  biz_name: 'Plentea',
  price: 1,
  address_1: '341 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.789990',
  lng: '-122.403890',
  rating: 3,
  business_info: "Refresh yourself with a bottle of flavorful fresh boba tea.",
  phone_number: "(415) 757-0223",
  website: "plenteaus.com",
  takes_reservations: "No",
  take_out: "Yes",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "Yes",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "Yes",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "No",
  owner_id: user1.id,
  hours: [
    ["11:00", "23:00"],	
    ["11:00", "23:00"],	
    ["11:00", "23:00"],	
    ["11:00", "23:00"],	
    ["11:00", "23:00"],	
    ["11:00", "23:00"],
    ["11:00", "23:00"]
  ]
)