# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Business.destroy_all
Review.destroy_all

#demo users
user1 = User.create!(email: 'demo@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 1', zipcode: '12345')
pro_file1 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/adult-beach-beard-736716.jpg')
user1.photos.attach(io: pro_file1, filename: 'profile1')

user2 = User.create!(email: 'demo1@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 2', zipcode: '12345')
user3 = User.create!(email: 'demo2@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 3', zipcode: '12345')
user4 = User.create!(email: 'demo3@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 4', zipcode: '12345')
user5 = User.create!(email: 'demo4@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 5', zipcode: '12345')

#seed users
seed1 = User.create!(email: 'seed1@seed.com', password: 'marklee', first_name: 'Mark', last_name: ' Lee', zipcode: '12345')
seed2 = User.create!(email: 'seed2@seed.com', password: 'misolee', first_name: 'Miso', last_name: ' Lee', zipcode: '12345')
seed3 = User.create!(email: 'seed3@seed.com', password: 'ericto', first_name: 'Eric', last_name: ' To', zipcode: '12345')
seed4 = User.create!(email: 'seed4@seed.com', password: 'suepark', first_name: 'Sue', last_name: ' Park', zipcode: '12345')
seed5 = User.create!(email: 'seed5@seed.com', password: 'adikantawala', first_name: 'Adi', last_name: ' Kantawala', zipcode: '12345')

# boba businesses
biz1 = Business.create!(
  biz_name: 'Plentea',
  price: "$",
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
  owner_id: seed3.id,
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
photo_file1 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/beverage-chiang-mai-cup-1581484.jpg')
biz1.photos.attach(io: photo_file1, filename: 'boba1')
photo_file2 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/rosalind-chang-658852-unsplash.jpg')
biz1.photos.attach(io: photo_file2, filename: 'boba2')
photo_file3 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2018-12-17+at+11.54.10+AM.png')
biz1.photos.attach(io: photo_file3, filename: 'boba3')

review1 = Review.create!(
  body: "I was sold on plentea when i heard the glass bottles were free with purchase. Very environmentally friendly though I don't know who actually brings their bottle back whenever they come to get a new drink. The drink prices are VERY fair and actually kind of cheap if you factor in getting a free glass jar. I was in San Fran for vacation and do not live here so I couldn't take the glass jar back with me. Also, if you check in, you get 15% off 2 drinks which makes it even cheaper. My boyfriend and I got the regular fruit teas and they were both pretty good and standard. I wish I could come back. If I lived in SF, this would be my go to bubble tea spot!",
  rating: 5,
  biz_id: biz1.id,
  author_id: seed1.id,
)

review2 = Review.create!(
  body: "I had heard a lot about Plentea for awhile but as I don't live in the city, there's not a ton of chances to get it unless I'm there. Well, when the wedding reception you're going to in a block or two away, why not?? To say the other wedding guests were excited then upset that boba wasnt actually being served is a bit of an understatement. Everyone loves their boba lol... But anyway, about Plentea. I thought the quality of the tea was pretty apparent in the taste. The jasmine tea scent was sooo fragrant and obvious in taste. I'd say it's one of my favorite jasmine milk teas I've had. The boba was also chewy and fresh and tasted like it was sitting in honey too. I ordered the matcha tea latte and that was also delicious! They use all organic teas and milks which I can really taste. And the cute glass bottles are of course another great marketing point (reduce plastic!!) and was actually quite convenient to cap off when I needed to store my boba away for a second. Drinks run about $5 or more if you add boba but if you buy two drinks and check in on yelp, you can get 15% off! I'd come back if I could!",
  rating: 5,
  biz_id: biz1.id,
  author_id: seed2.id,
)

review3 = Review.create!(
  body: "Generally, bubble tea makes me feel bloated afterwards. I realize this is because they probably use powder, or because their tapioca comes from some questionable source, who knows. With Plentea's drink offerings, it tasted clean and like real tea and milk, which is something I appreciate a lot and I'm willing to pay the premium if I know what I'm drinking is not powder. I can even see the staff make my drink in front of me, which is more reassuring than the places that have someone take my order, disappear into the back, and come back with my drink. ",
  rating: 5,
  biz_id: biz1.id,
  author_id: seed3.id,
)

biz2 = Business.create!(
  biz_name: 'Hanlin Tea Restaurant',
  price: "$$",
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
  owner_id: seed3.id,
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
photo_file4 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/bowl-caffeine-cooking-229493.jpg')
biz2.photos.attach(io: photo_file4, filename: 'boba4')
photo_file5 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2018-12-17+at+11.55.57+AM.png')
biz2.photos.attach(io: photo_file5, filename: 'boba5')
photo_file6 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2018-12-17+at+11.56.43+AM.png')
biz2.photos.attach(io: photo_file6, filename: 'boba6')

review4 = Review.create!(
  body: "THIS IS AN EXCELLENT REVIEW OF hanlin. GREAT PLACE FOR APP ACADEMY.",
  rating: 5,
  biz_id: biz2.id,
  author_id: seed1.id,
)

biz3 = Business.create!(
  biz_name: 'Boba Butt Tea House',
  price: "$",
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
  owner_id: seed3.id,
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
photo_file7 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
photo_file8 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
photo_file9 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
biz3.photos.attach(io: photo_file7, filename: 'boba7')
biz3.photos.attach(io: photo_file8, filename: 'boba8')
biz3.photos.attach(io: photo_file9, filename: 'boba9')

biz4 = Business.create!(
  biz_name: 'Boba Guys',
  price: "$",
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
  owner_id: seed3.id,
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
photo_file10 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/jason-leung-708912-unsplash.jpg')
photo_file11 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/jason-leung-708912-unsplash.jpg')
photo_file12 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/jason-leung-708912-unsplash.jpg')
biz4.photos.attach(io: photo_file10, filename: 'boba10')
biz4.photos.attach(io: photo_file11, filename: 'boba11')
biz4.photos.attach(io: photo_file12, filename: 'boba12')

biz5 = Business.create!(
  biz_name: 'Identitea',
  price: "$",
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
  owner_id: seed3.id,
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
photo_file13 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2018-12-17+at+11.41.38+AM.png')
photo_file14 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2018-12-17+at+11.50.01+AM.png')
photo_file15 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2018-12-17+at+11.50.15+AM.png')
biz5.photos.attach(io: photo_file13, filename: 'boba13')
biz5.photos.attach(io: photo_file14, filename: 'boba14')
biz5.photos.attach(io: photo_file15, filename: 'boba15')

# biz6 = Business.create!(
#   biz_name: 'i-Tea',
#   price: "$",
#   address_1: '253 Kearny St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94108',
#   lat: '37.789990',
#   lng: '-122.403890',
#   rating: 4,
#   business_info: "Authentic Boba Milk Tea, Fruit Tea & Tea Bar --Contemporary Original Taiwan Taste--",
#   phone_number: "(628) 400-4087",
#   website: "itea-usa.com",
#   takes_reservations: "No",
#   take_out: "Yes",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "Yes",
#   free_wifi: "Yes",
#   pets_allowed: "No",
#   wheelchair_accessible: "Yes",
#   good_for_kids: "Yes",
#   good_for_groups: "Yes",
#   outdoor_seating: "No",
#   caters: "Yes",
#   owner_id: seed3.id,
#   hours: [
#     ["11:00", "19:00"],	
#     ["11:00", "19:00"],	
#     ["11:00", "19:00"],	
#     ["11:00", "19:00"],	
#     ["11:00", "20:00"],	
#     ["11:00", "19:00"],
#     ["12:00", "19:00"]
#   ]
# )
# photo_file16 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file17 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file18 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# biz6.photos.attach(io: photo_file16, filename: 'boba16')
# biz6.photos.attach(io: photo_file17, filename: 'boba17')
# biz6.photos.attach(io: photo_file18, filename: 'boba18')

# biz7 = Business.create!(
#   biz_name: 'Purple Kow',
#   price: "$",
#   address_1: '3620 Balboa St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94121',
#   lat: '37.775900',
#   lng: '-122.497820',
#   rating: 3,
#   business_info: "We are serving tea in the outer Richmond area",
#   phone_number: "(415) 387-9009",
#   website: "purplekow.com",
#   takes_reservations: "No",
#   take_out: "Yes",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "Yes",
#   free_wifi: "Yes",
#   pets_allowed: "No",
#   wheelchair_accessible: "Yes",
#   good_for_kids: "Yes",
#   good_for_groups: "Yes",
#   outdoor_seating: "No",
#   caters: "No",
#   owner_id: seed3.id,
#   hours: [
#     ["11:00", "20:00"],	
#     ["11:00", "20:00"],	
#     ["11:00", "20:00"],	
#     ["11:00", "20:00"],	
#     ["11:00", "24:00"],	
#     ["11:00", "24:00"],
#     ["12:00", "20:00"]
#   ]
# )
# photo_file19 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file20 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file21 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# biz7.photos.attach(io: photo_file19, filename: 'boba19')
# biz7.photos.attach(io: photo_file20, filename: 'boba20')
# biz7.photos.attach(io: photo_file21, filename: 'boba21')

# biz8 = Business.create!(
#   biz_name: 'Asha Tea House',
#   price: "$",
#   address_1: '17 Kearny St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94108',
#   lat: '37.789990',
#   lng: '-122.403890',
#   rating: 4,
#   business_info: "There is a cup of tea out there for everyone, whether it's a simple glass of straight tea, or a crafted cup of flavored tea.",
#   phone_number: "(415) 549-3688",
#   website: "ashateahouse.com",
#   takes_reservations: "No",
#   take_out: "Yes",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "Yes",
#   free_wifi: "Yes",
#   pets_allowed: "No",
#   wheelchair_accessible: "Yes",
#   good_for_kids: "Yes",
#   good_for_groups: "Yes",
#   outdoor_seating: "No",
#   caters: "Yes",
#   owner_id: seed3.id,
#   hours: [
#     ["8:30", "18:30"],	
#     ["8:30", "18:30"],	
#     ["8:30", "18:30"],	
#     ["8:30", "18:30"],	
#     ["8:30", "18:30"],	
#     ["11:00", "18:30"],
#     ["11:00", "18:30"]
#   ]
# )
# photo_file22 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file23 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file24 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# biz8.photos.attach(io: photo_file22, filename: 'boba22')
# biz8.photos.attach(io: photo_file23, filename: 'boba23')
# biz8.photos.attach(io: photo_file24, filename: 'boba24')

# biz9 = Business.create!(
#   biz_name: 'T & T',
#   price: "$",
#   address_1: '601 Broadway St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94133',
#   lat: '37.797490',
#   lng: '-122.407240',
#   rating: 3,
#   business_info: "Local boba shop near Chinatown and North Beach.",
#   phone_number: "(415) 238-2992",
#   website: "",
#   takes_reservations: "No",
#   take_out: "Yes",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "No",
#   free_wifi: "Yes",
#   pets_allowed: "No",
#   wheelchair_accessible: "Yes",
#   good_for_kids: "Yes",
#   good_for_groups: "Yes",
#   outdoor_seating: "No",
#   caters: "No",
#   owner_id: seed3.id,
#   hours: [
#     ["8:00", "23:00"],	
#     ["8:00", "23:00"],	
#     ["8:00", "23:00"],	
#     ["8:00", "23:00"],	
#     ["8:00", "1:00"],	
#     ["8:00", "1:00"],
#     ["8:00", "23:00"]
#   ]
# )
# photo_file25 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file26 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file27 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# biz9.photos.attach(io: photo_file25, filename: 'boba25')
# biz9.photos.attach(io: photo_file26, filename: 'boba26')
# biz9.photos.attach(io: photo_file27, filename: 'boba27')

# biz10 = Business.create!(
#   biz_name: 'E Tea',
#   price: "$",
#   address_1: '839 Kearny St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94108',
#   lat: '37.795830',
#   lng: '-122.405240',
#   rating: 3,
#   business_info: "Come and try Alice’s secret formula bubble tea.",
#   phone_number: "(415) 956-1868",
#   website: "eteasf.com",
#   takes_reservations: "No",
#   take_out: "Yes",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "No",
#   free_wifi: "No",
#   pets_allowed: "No",
#   wheelchair_accessible: "Yes",
#   good_for_kids: "Yes",
#   good_for_groups: "Yes",
#   outdoor_seating: "No",
#   caters: "No",
#   owner_id: seed3.id,
#   hours: [
#     ["11:30", "21:30"],	
#     ["11:30", "21:30"],	
#     ["11:30", "21:30"],	
#     ["11:30", "21:30"],	
#     ["11:30", "21:30"],	
#     ["11:30", "21:30"],
#     ["11:30", "21:30"]
#   ]
# )
# photo_file28 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file29 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# photo_file30 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
# biz10.photos.attach(io: photo_file28, filename: 'boba28')
# biz10.photos.attach(io: photo_file29, filename: 'boba29')
# biz10.photos.attach(io: photo_file30, filename: 'boba30')

# coffe shops
Business.create!(
  biz_name: 'Jackson Place Cafe',
  price: "$",
  address_1: '633 Battery St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94111',
  lat: '37.797230',
  lng: '-122.401060',
  rating: 4,
  business_info: "Local cafe serving the Financial District of San Francisco.",
  phone_number: "",
  website: "",
  takes_reservations: "No",
  take_out: "No",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "No",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "Yes",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "No",
  owner_id: seed3.id,
  hours: [
    ["8:00", "16:00"],	
    ["8:00", "16:00"],	
    ["8:00", "16:00"],	
    ["8:00", "16:00"],	
    ["8:00", "16:00"],	
    ["8:00", "16:00"],
    ["8:00", "16:00"]
  ]
)

Business.create!(
  biz_name: 'Reveille Coffee Co. Truck',
  price: "$$",
  address_1: '768 Sansome St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94111',
  lat: '37.797360',
  lng: '-122.401650',
  rating: 4,
  business_info: "Coffee Truck serving the Financial District of San Francisco.",
  phone_number: "(415) 789-6258",
  website: "reveillecoffee.com",
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
  outdoor_seating: "Yes",
  caters: "No",
  owner_id: seed3.id,
  hours: [
    ["7:30", "15:00"],	
    ["7:30", "15:00"],	
    ["7:30", "15:00"],	
    ["7:30", "15:00"],	
    ["7:30", "15:00"],	
    ["7:30", "15:00"],
    ["7:30", "15:00"]
  ]
)

Business.create!(
  biz_name: 'Chapter 2 Coffee',
  price: "$",
  address_1: '411 Sansome St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94111',
  lat: '37.793980',
  lng: '-122.401340',
  rating: 4,
  business_info: "We are proudly serving Verve Coffee, delicious teas from T-We.",
  phone_number: "",
  website: "",
  takes_reservations: "No",
  take_out: "Yes",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "No",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "Yes",
  good_for_groups: "No",
  outdoor_seating: "No",
  caters: "No",
  owner_id: seed3.id,
  hours: [
    ["7:00", "15:30"],	
    ["7:00", "15:30"],	
    ["7:00", "15:30"],	
    ["7:00", "15:30"],	
    ["7:00", "15:30"],	
    ["7:00", "15:30"],
    ["7:00", "15:30"]
  ]
)

# Business.create!(
#   biz_name: 'Chapel Hill Coffee',
#   price: "$$",
#   address_1: '670 Commercial St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94111',
#   lat: '37.794210',
#   lng: '-122.404240',
#   rating: 4,
#   business_info: "Serving hyper-local, small batch, like-minded businesses that care.",
#   phone_number: "",
#   website: "chapelhillcoffee.com",
#   takes_reservations: "No",
#   take_out: "Yes",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "Yes",
#   free_wifi: "Yes",
#   pets_allowed: "No",
#   wheelchair_accessible: "Yes",
#   good_for_kids: "Yes",
#   good_for_groups: "No",
#   outdoor_seating: "No",
#   caters: "No",
#   owner_id: seed3.id,
#   hours: [
#     ["8:00", "15:30"],	
#     ["8:00", "15:30"],	
#     ["8:00", "15:30"],	
#     ["8:00", "15:30"],	
#     ["8:00", "15:30"],	
#     ["8:00", "15:30"],
#     ["8:00", "15:30"]
#   ]
# )

# Business.create!(
#   biz_name: 'Joe & The Juice',
#   price: "$$",
#   address_1: '301 Howard St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94105',
#   lat: '37.789520',
#   lng: '-122.394270',
#   rating: 3,
#   business_info: "We sell products to fund the most attractive youth culture in the world.",
#   phone_number: "",
#   website: "joejuice.com",
#   takes_reservations: "No",
#   take_out: "Yes",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "Yes",
#   free_wifi: "Yes",
#   pets_allowed: "No",
#   wheelchair_accessible: "Yes",
#   good_for_kids: "Yes",
#   good_for_groups: "Yes",
#   outdoor_seating: "No",
#   caters: "No",
#   owner_id: seed3.id,
#   hours: [
#     ["6:00", "21:00"],	
#     ["6:00", "21:00"],	
#     ["6:00", "21:00"],	
#     ["6:00", "21:00"],	
#     ["6:00", "21:00"],	
#     ["8:00", "19:00"],
#     ["8:00", "18:00"]
#   ]
# )

#bars
Business.create!(
  biz_name: 'Pagan Idol',
  price: "$$",
  address_1: '375 Bush St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94104',
  lat: '37.790480',
  lng: '-122.406360',
  rating: 4,
  business_info: "Pagan Idol is a Tiki bar located in the Financial District of San Francisco housed in a historical space that was once home to the infamous Tiki Bob's Mainland Rendezvous.",
  phone_number: "(415) 985-6375",
  website: "paganidol.com",
  takes_reservations: "Yes",
  take_out: "No",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "No",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "No",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "No",
  owner_id: seed3.id,
  hours: [
    ["16:00", "2:00"],	
    ["16:00", "2:00"],	
    ["16:00", "2:00"],	
    ["16:00", "2:00"],	
    ["16:00", "2:00"],	
    ["18:00", "2:00"],
    ["16:00", "2:00"]
  ]
)

Business.create!(
  biz_name: 'The Pink Elephant Alibi',
  price: "$$",
  address_1: '142 Minna St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94105',
  lat: '37.786820',
  lng: '-122.400490',
  rating: 4,
  business_info: "Delicious Cocktails from Mixoligist, Happy Hour, Brunch, Over 20 flavors of Bottomless Mimosas & Belgium Beers.",
  phone_number: "(415) 985-6375",
  website: "https://thepinkelephantsf.wixsite.com/mysite",
  takes_reservations: "Yes",
  take_out: "Yes",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "No",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "No",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "No",
  owner_id: seed3.id,
  hours: [
    ["16:00", "21:00"],	
    ["16:00", "22:00"],	
    ["16:00", "22:00"],	
    ["16:00", "22:00"],	
    ["11:00", "22:00"],	
    ["10:00", "16:00"],
    ["10:00", "16:00"]
  ]
)

Business.create!(
  biz_name: 'The View Lounge',
  price: "$$",
  address_1: '780 Mission St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94103',
  lat: '37.785488',
  lng: '-122.404694',
  rating: 4,
  business_info: "The iconic View Lounge atop the San Francisco Marriott Marquis is the ideal destination for business and leisure guests where they can enjoy hand crafted cocktails and locally inspired small plates accompanied by the most awe inspiring views the city has to offer.",
  phone_number: "(415) 442-6003",
  website: "https://www.marriott.com/hotels/hotel-information/restaurant/sfodt-san-francisco-marriott-marquis/",
  takes_reservations: "No",
  take_out: "No",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "No",
  free_wifi: "Yes",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "No",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "No",
  owner_id: seed3.id,
  hours: [
    ["16:00", "1:00"],	
    ["16:00", "1:00"],	
    ["16:00", "1:00"],	
    ["16:00", "1:30"],	
    ["16:00", "1:30"],	
    ["16:00", "1:30"],
    ["16:00", "1:00"]
  ]
)

# Business.create!(
#   biz_name: 'Local Edition',
#   price: "$$",
#   address_1: '691 Market St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94105',
#   lat: '37.787410',
#   lng: '-122.403000',
#   rating: 4,
#   business_info: "Local Edition is more than just a cocktail bar.",
#   phone_number: "(415) 795-1375",
#   website: "https://www.localeditionsf.com/",
#   takes_reservations: "Yes",
#   take_out: "No",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "Yes",
#   free_wifi: "No",
#   pets_allowed: "No",
#   wheelchair_accessible: "No",
#   good_for_kids: "No",
#   good_for_groups: "Yes",
#   outdoor_seating: "No",
#   caters: "No",
#   owner_id: seed3.id,
#   hours: [
#     ["5:00", "2:00"],	
#     ["5:00", "2:00"],	
#     ["5:00", "2:00"],	
#     ["5:00", "2:00"],	
#     ["4:30", "2:00"],	
#     ["7:00", "2:00"],
#     ["7:00", "2:00"]
#   ]
# )

# Business.create!(
#   biz_name: 'The Royal Exchange',
#   price: "$$",
#   address_1: '301 Sacramento St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94111',
#   lat: '37.794160',
#   lng: '-122.399140',
#   rating: 3,
#   business_info: "Pub grub, lots of beers on tap & TVs tuned to sports highlight this popular Financial District bar.",
#   phone_number: "(415) 956-1710",
#   website: "royalexchange.com",
#   takes_reservations: "Yes",
#   take_out: "Yes",
#   delivery: "No",
#   credit_card: "Yes",
#   bike_parking: "Yes",
#   free_wifi: "No",
#   pets_allowed: "No",
#   wheelchair_accessible: "Yes",
#   good_for_kids: "No",
#   good_for_groups: "Yes",
#   outdoor_seating: "No",
#   caters: "Yes",
#   owner_id: seed3.id,
#   hours: [
#     ["11:00", "23:00"],	
#     ["11:00", "23:00"],	
#     ["11:00", "23:00"],	
#     ["11:00", "23:00"],	
#     ["11:00", "23:00"],	
#     ["11:00", "23:00"],
#     ["11:00", "23:00"]
#   ]
# )
