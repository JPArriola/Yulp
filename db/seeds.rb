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

Business.create!(
  biz_name: 'Hanlin Tea Restaurant',
  price: 2,
  address_1: '801 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.795490',
  lng: '-122.405200',
  rating: 4,
  business_info: "Taiwanese food & Good service",
  phone_number: "(415) 780-5000",
  website: "hanlinusakearny.com",
  takes_reservations: "Yes",
  take_out: "Yes",
  delivery: "Yes",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "Yes",
  pets_allowed: "Yes",
  wheelchair_accessible: "Yes",
  good_for_kids: "Yes",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "Yes",
  owner_id: user1.id,
  hours: [
    ["11:00", "22:00"],	
    ["11:00", "22:00"],	
    ["11:00", "22:00"],	
    ["11:00", "22:00"],	
    ["11:00", "22:00"],	
    ["11:00", "22:00"],
    ["11:00", "22:00"]
  ]
)

Business.create!(
  biz_name: 'Boba Butt Tea House',
  price: 1,
  address_1: '714 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.789990',
  lng: '-122.403890',
  rating: 3,
  business_info: "Boba Butt Tea House provides a truly organic and fresh experience.",
  phone_number: "",
  website: "",
  takes_reservations: "No",
  take_out: "Yes",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "No",
  free_wifi: "Yes",
  pets_allowed: "Yes",
  wheelchair_accessible: "Yes",
  good_for_kids: "Yes",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "No",
  owner_id: user1.id,
  hours: [
    ["12:00", "19:00"],	
    ["12:00", "19:00"],	
    ["12:00", "19:00"],	
    ["12:00", "19:00"],	
    ["12:00", "19:00"],	
    ["12:00", "20:00"],
    ["12:00", "19:00"]
  ]
)

Business.create!(
  biz_name: 'Boba Guys',
  price: 1,
  address_1: '429 Stockton St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.788970',
  lng: '-122.406880',
  rating: 4,
  business_info: "Food is our craft (*the true love of our life*) and we knew our drinks and ingredients had to be top notch if we wanted to change the industry.",
  phone_number: "(415) 967-2622",
  website: "bobaguys.com",
  takes_reservations: "No",
  take_out: "Yes",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "No",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "Yes",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "Yes",
  owner_id: user1.id,
  hours: [
    ["8:00", "21:00"],	
    ["8:00", "21:00"],	
    ["8:00", "21:00"],	
    ["8:00", "21:00"],	
    ["8:00", "22:00"],	
    ["12:00", "22:00"],
    ["12:00", "18:00"]
  ]
)

Business.create!(
  biz_name: 'Identitea',
  price: 1,
  address_1: '3109 24th St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94110',
  lat: '37.752500',
  lng: '-122.414080',
  rating: 4,
  business_info: "Identitea aims to provide a cohesive fusion between traditional Taiwanese boba and an Americanized twist in order to deliver a more modernized boba drink that is perfectly tailored to please a large audience.",
  phone_number: "(415) 756-4992",
  website: "",
  takes_reservations: "No",
  take_out: "Yes",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "No",
  pets_allowed: "Yes",
  wheelchair_accessible: "Yes",
  good_for_kids: "Yes",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "Yes",
  owner_id: user1.id,
  hours: [
    ["11:00", "20:00"],	
    ["11:00", "20:00"],	
    ["11:00", "17:00"],	
    ["11:00", "20:00"],	
    ["11:00", "20:00"],	
    ["11:00", "20:00"],
    ["11:00", "20:00"]
  ]
)

Business.create!(
  biz_name: 'i-Tea',
  price: 1,
  address_1: '253 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.789990',
  lng: '-122.403890',
  rating: 4,
  business_info: "Authentic Boba Milk Tea, Fruit Tea & Tea Bar --Contemporary Original Taiwan Taste--",
  phone_number: "(628) 400-4087",
  website: "itea-usa.com",
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
  caters: "Yes",
  owner_id: user1.id,
  hours: [
    ["11:00", "19:00"],	
    ["11:00", "19:00"],	
    ["11:00", "19:00"],	
    ["11:00", "19:00"],	
    ["11:00", "20:00"],	
    ["11:00", "19:00"],
    ["12:00", "19:00"]
  ]
)