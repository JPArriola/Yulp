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
user_pro_file1 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/Screen+Shot+2018-12-21+at+11.55.22+AM.png')
user1.photos.attach(io: user_pro_file1, filename: 'userprofile1')

user2 = User.create!(email: 'demo1@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 2', zipcode: '12345')
user_pro_file2 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/Screen+Shot+2018-12-21+at+11.55.53+AM.png')
user2.photos.attach(io: user_pro_file2, filename: 'userprofile2')

user3 = User.create!(email: 'demo2@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 3', zipcode: '12345')
user_pro_file3 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/Screen+Shot+2018-12-21+at+11.56.08+AM.png')
user3.photos.attach(io: user_pro_file3, filename: 'userprofile3')

user4 = User.create!(email: 'demo3@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 4', zipcode: '12345')
user_pro_file4 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/Screen+Shot+2018-12-21+at+11.56.27+AM.png')
user4.photos.attach(io: user_pro_file4, filename: 'userprofile4')

user5 = User.create!(email: 'demo4@guest.com', password: 'password', first_name: 'Guest', last_name: ' User 5', zipcode: '12345')
user_pro_file5 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/Screen+Shot+2018-12-21+at+11.56.48+AM.png')
user5.photos.attach(io: user_pro_file5, filename: 'userprofile5')

#seed users
seed1 = User.create!(email: 'seed1@seed.com', password: 'marklee', first_name: 'Mark', last_name: ' Lee', zipcode: '12345')
pro_file1 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/adult-beach-beard-736716.jpg')
seed1.photos.attach(io: pro_file1, filename: 'profile1')

seed2 = User.create!(email: 'seed2@seed.com', password: 'misolee', first_name: 'Miso', last_name: ' Lee', zipcode: '12345')
pro_file2 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/FAN9010365.JPG')
seed2.photos.attach(io: pro_file2, filename: 'profile2')

seed3 = User.create!(email: 'seed3@seed.com', password: 'ericto', first_name: 'Eric', last_name: ' To', zipcode: '12345')
pro_file3 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/Screen+Shot+2018-12-20+at+5.43.36+PM.png')
seed3.photos.attach(io: pro_file3, filename: 'profile3')

seed4 = User.create!(email: 'seed4@seed.com', password: 'suepark', first_name: 'Sue', last_name: ' Park', zipcode: '12345')
pro_file4 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/BLP0062303.JPG')
seed4.photos.attach(io: pro_file4, filename: 'profile4')

seed5 = User.create!(email: 'seed5@seed.com', password: 'adikantawala', first_name: 'Adi', last_name: ' Kantawala', zipcode: '12345')
pro_file5 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Profile/Screen+Shot+2018-12-20+at+5.45.10+PM.png')
seed5.photos.attach(io: pro_file5, filename: 'profile5')

# boba businesses
biz1 = Business.create!(
  biz_name: 'Plentea',
  category: "boba",
  price: "$",
  address_1: '341 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.791251',
  lng: '-122.404236',
  rating: 5,
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

biz2 = Business.create!(
  biz_name: 'Hanlin Tea Restaurant',
  category: "boba",
  price: "$$",
  address_1: '801 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.795490',
  lng: '-122.405200',
  rating: 5,
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

biz3 = Business.create!(
  biz_name: 'Boba Butt Tea House',
  category: "boba",
  price: "$",
  address_1: '714 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.794640',
  lng: '-122.404727',
  rating: 5,
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
photo_file7 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2018-12-20+at+6.48.06+PM.png')
photo_file8 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2018-12-20+at+6.48.30+PM.png')
photo_file9 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/charles-deluvio-1139655-unsplash.jpg')
biz3.photos.attach(io: photo_file7, filename: 'boba7')
biz3.photos.attach(io: photo_file8, filename: 'boba8')
biz3.photos.attach(io: photo_file9, filename: 'boba9')

biz4 = Business.create!(
  biz_name: 'Boba Guys',
  category: "boba",
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
  category: "boba",
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

biz6 = Business.create!(
  biz_name: 'i-Tea',
  category: "boba",
  price: "$",
  address_1: '253 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.790353',
  lng: '-122.404119',
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
  owner_id: seed3.id,
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
photo_file16 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2019-01-30+at+11.50.08+AM.png')
photo_file17 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2019-01-30+at+11.50.19+AM.png')
photo_file18 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2019-01-30+at+11.50.37+AM.png')
biz6.photos.attach(io: photo_file16, filename: 'boba16')
biz6.photos.attach(io: photo_file17, filename: 'boba17')
biz6.photos.attach(io: photo_file18, filename: 'boba18')

biz7 = Business.create!(
  biz_name: 'Purple Kow',
  category: "boba",
  price: "$",
  address_1: '3620 Balboa St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94121',
  lat: '37.775900',
  lng: '-122.497820',
  rating: 3,
  business_info: "We are serving tea in the outer Richmond area",
  phone_number: "(415) 387-9009",
  website: "purplekow.com",
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
    ["11:00", "20:00"],	
    ["11:00", "20:00"],	
    ["11:00", "20:00"],	
    ["11:00", "20:00"],	
    ["11:00", "24:00"],	
    ["11:00", "24:00"],
    ["12:00", "20:00"]
  ]
)
photo_file19 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2019-01-30+at+11.54.24+AM.png')
photo_file20 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2019-01-30+at+11.54.36+AM.png')
photo_file21 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Boba/Screen+Shot+2019-01-30+at+11.54.46+AM.png')
biz7.photos.attach(io: photo_file19, filename: 'boba19')
biz7.photos.attach(io: photo_file20, filename: 'boba20')
biz7.photos.attach(io: photo_file21, filename: 'boba21')

# biz8 = Business.create!(
#   biz_name: 'Asha Tea House',
#   category: "boba",
#   price: "$",
#   address_1: '17 Kearny St',
#   city: 'San Francisco',
#   state: 'CA',
#   zipcode: '94108',
#   lat: '37.788199',
#   lng: '-122.403642',
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
#   category: "boba",
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
#   category: "boba",
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

#boba reviews
Review.create!(
  body: "I was sold on plentea when i heard the glass bottles were free with purchase. Very environmentally friendly though I don't know who actually brings their bottle back whenever they come to get a new drink. The drink prices are VERY fair and actually kind of cheap if you factor in getting a free glass jar. I was in San Fran for vacation and do not live here so I couldn't take the glass jar back with me. Also, if you check in, you get 15% off 2 drinks which makes it even cheaper. My boyfriend and I got the regular fruit teas and they were both pretty good and standard. I wish I could come back. If I lived in SF, this would be my go to bubble tea spot!",
  rating: 5,
  biz_id: biz1.id,
  author_id: seed1.id,
)

Review.create!(
  body: "I had heard a lot about Plentea for awhile but as I don't live in the city, there's not a ton of chances to get it unless I'm there. Well, when the wedding reception you're going to in a block or two away, why not?? To say the other wedding guests were excited then upset that boba wasnt actually being served is a bit of an understatement. Everyone loves their boba lol... But anyway, about Plentea. I thought the quality of the tea was pretty apparent in the taste. The jasmine tea scent was sooo fragrant and obvious in taste. I'd say it's one of my favorite jasmine milk teas I've had. The boba was also chewy and fresh and tasted like it was sitting in honey too. I ordered the matcha tea latte and that was also delicious! They use all organic teas and milks which I can really taste. And the cute glass bottles are of course another great marketing point (reduce plastic!!) and was actually quite convenient to cap off when I needed to store my boba away for a second. Drinks run about $5 or more if you add boba but if you buy two drinks and check in on yelp, you can get 15% off! I'd come back if I could!",
  rating: 4,
  biz_id: biz1.id,
  author_id: seed2.id,
)

Review.create!(
  body: "Generally, bubble tea makes me feel bloated afterwards. I realize this is because they probably use powder, or because their tapioca comes from some questionable source, who knows. With Plentea's drink offerings, it tasted clean and like real tea and milk, which is something I appreciate a lot and I'm willing to pay the premium if I know what I'm drinking is not powder. I can even see the staff make my drink in front of me, which is more reassuring than the places that have someone take my order, disappear into the back, and come back with my drink. ",
  rating: 5,
  biz_id: biz1.id,
  author_id: seed3.id,
)

Review.create!(
  body: "Pork noodles were good and so were the beef noodle soup for entrees. All the dishes were made well and tasty. We also got popcorn chicken, a beef appetizer, cucumbers,  and tofu. I would definitely come back again. The space was clean and good for groups.",
  rating: 4,
  biz_id: biz2.id,
  author_id: seed4.id,
)

Review.create!(
  body: "Service was pretty friendly, but you would need to keep calling them since they kept forgetting customers request. I have to say the dishes were really good and really Taiwanese compared with the Taiwanese restaurants in the U.S.. Yet, the boba tea were just okay even thought the server told me the drinks are more traditional Taiwanese flavor compared with their dishes, I still believe it's dishes were more Taiwanese and you should try out if you are a Taiwanese and miss your hometown foods. Also, there were many dishes already sold out when I arrived at 3pm on Sunday. Note: The restaurant has three floors, if the first floor is full, you might want to ask about it.",
  rating: 4,
  biz_id: biz2.id,
  author_id: seed5.id,
)

Review.create!(
  body: "This is my friend and I's favorite boba tea place in SF within a mile from where we live. It's quick and convenient and the people working there are always nice. He introduced me to their black boba black bubble milk tea which is divine! It's a good tea flavor and not too milky. I usually get it 75% sweet. 5 stars for the boba alone, I feel as though this place has perfected the art of boba ball cooking. They are boba engineers here! Don't come here expecting fruity or weird powdery artificial flavors. They serve real tea drinks and you can tell they really take pride in their drinks. I still can't believe my friend introduced me to my favorite boba in SF lol",
  rating: 5,
  biz_id: biz2.id,
  author_id: seed1.id,
)

Review.create!(
  body: "Corgi Butt on my drink, yas! Finally got a chance to come to Chinatown to try boba butt and it did not disappoint! I ordered the jasmine green tea crema, sans boba because I wanted to try the flavor of the drink. Plus, boba would just take away from the drinks quality with its overpowering sugary level. It was very refreshing and the crema was not heavy which is why I enjoyed. Will definitely come again when I'm in the area. Also bought myself a corgi butt sticker for my laptop!",
  rating: 5,
  biz_id: biz3.id,
  author_id: seed2.id,
)

Review.create!(
  body: "I love this Boba Butt Tea House! After months of searching for a good boba place in SF with fruit teas, I finally found one! I got the passionfruit green tea with strawberry stars/boba and was not disappointed. The service was great and the space is very cute. Although it's not cheap, I thought the quality of the boba was great. ",
  rating: 5,
  biz_id: biz3.id,
  author_id: seed3.id,
)

Review.create!(
  body: "I ordered a Strawberry Milk Tea with boba. The boba was chewy in a good way. The drink was not too sweet. In fact, I could actually taste the tea! I would probably come back, considering this place is not on a steep hill like some of the other shops in Chinatown; you don't have to work hard for your drink ;).",
  rating: 5,
  biz_id: biz3.id,
  author_id: seed5.id,
)

Review.create!(
  body: "This location is always SO BUSY when I'm here so expect to wait 20-40minutes depending on what day/time you come. Customer service is always great! Despite the business, the workers don't show that they're tired or uninterested in taking your order or perfecting your drink to your liking. I got a regular sized strawberry matcha, while my friend got two drinks: regular black sesame and large strawberry matcha with boba in all of them!",
  rating: 5,
  biz_id: biz1.id,
  author_id: seed4.id,
)

Review.create!(
  body: "This location is always SO BUSY when I'm here so expect to wait 20-40minutes depending on what day/time you come. Customer service is always great! Despite the business, the workers don't show that they're tired or uninterested in taking your order or perfecting your drink to your liking. I got a regular sized strawberry matcha, while my friend got two drinks: regular black sesame and large strawberry matcha with boba in all of them!",
  rating: 4,
  biz_id: biz4.id,
  author_id: seed4.id,
)

Review.create!(
  body: "This location is always SO BUSY when I'm here so expect to wait 20-40minutes depending on what day/time you come. Customer service is always great! Despite the business, the workers don't show that they're tired or uninterested in taking your order or perfecting your drink to your liking. I got a regular sized strawberry matcha, while my friend got two drinks: regular black sesame and large strawberry matcha with boba in all of them!",
  rating: 5,
  biz_id: biz5.id,
  author_id: seed3.id,
)

Review.create!(
  body: "Disappointed! First off the line was way too long for decent boba tea and secondly it took forever for our boba tea to get prepared! We literally waited about 35 minutes for just BOBA TEA! The employees making the boba tea take their sweet time which is fine but some customers can't wait half an hour! ",
  rating: 5,
  biz_id: biz5.id,
  author_id: seed2.id,
)

Review.create!(
  body: "Disappointed! First off the line was way too long for decent boba tea and secondly it took forever for our boba tea to get prepared! We literally waited about 35 minutes for just BOBA TEA! The employees making the boba tea take their sweet time which is fine but some customers can't wait half an hour! ",
  rating: 5,
  biz_id: biz3.id,
  author_id: seed1.id,
)

Review.create!(
  body: "Disappointed! First off the line was way too long for decent boba tea and secondly it took forever for our boba tea to get prepared! We literally waited about 35 minutes for just BOBA TEA! The employees making the boba tea take their sweet time which is fine but some customers can't wait half an hour! ",
  rating: 5,
  biz_id: biz5.id,
  author_id: seed5.id,
)

Review.create!(
  body: "Disappointed! First off the line was way too long for decent boba tea and secondly it took forever for our boba tea to get prepared! We literally waited about 35 minutes for just BOBA TEA! The employees making the boba tea take their sweet time which is fine but some customers can't wait half an hour! ",
  rating: 5,
  biz_id: biz7.id,
  author_id: seed1.id,
)

Review.create!(
  body: "This location is always SO BUSY when I'm here so expect to wait 20-40minutes depending on what day/time you come. Customer service is always great! Despite the business, the workers don't show that they're tired or uninterested in taking your order or perfecting your drink to your liking. I got a regular sized strawberry matcha, while my friend got two drinks: regular black sesame and large strawberry matcha with boba in all of them!",
  rating: 3,
  biz_id: biz6.id,
  author_id: seed2.id,
)

Review.create!(
  body: "The line is real. I've never waited thirty minutes for bubble tea but I wanted to know if the hype was real. And it didn't disappoint. I got one the popular ones, strawberry matcha. Make sure to mix it well before you drink. The tea is light with a subtle strawberry flavor from their house made fruit purée. I didn't get boba in my drink but I tried my friend's drink, and the boba was very soft. I really like that none of their drinks have that artificial syrup flavor. They're committed to high quality ingredients and you can taste the difference. Luckily there's one open in near me so I don't have to go all the way int the city to try another boba creation.",
  rating: 4,
  biz_id: biz7.id,
  author_id: seed3.id,
)

Review.create!(
  body: "Walked to this location after strolling through China town. You can walk down from stairs next to the overpass / tunnel that says Union Square.  Line was surprisingly long. They even have the velvet ropes laid out to one side of the side walk so that the waiting patrons do not block the entrance of other businesses. Drink selection seemed pretty limited verses other boba places but, perhaps, this was one of the factors contributing to their success. I ordered the Milk Tea with Tapioca with no sugar as tapioca balls contains sweetness. The tapioca balls were extremely soft and chewy. Made the drink enjoyable than what it really was. ",
  rating: 5,
  biz_id: biz6.id,
  author_id: seed4.id,
)

Review.create!(
  body: "We came with a group so I was able to try a little bit of everything. And I must say.. the hype is real.. Strawberry matcha latte, dirty horchata and the classic milk tea were all very good. Line was out the door but moved pretty fast.",
  rating: 5,
  biz_id: biz7.id,
  author_id: seed5.id,
)

Review.create!(
  body: "Not sure why this place is so popular. I mean, the drinks are definitely decent, but they're on par to almost all the boba places near my house in L.A. My favorite drink here was the thai tea. I also tried the Hong Kong Style, which was ok once I upped my sweetener to 75%, but still was kinda bland. I also tried some of my cousin's dirty horchata ... which I didn't care for at all. Luckily the line here looks much worse than it is. It goes by fairly quick, so don't be discouraged. Stay Cheerful ;)",
  rating: 3,
  biz_id: biz6.id,
  author_id: seed3.id,
)

Review.create!(
  body: "Maybe I ordered the wrong thing, but shouldn't everything taste good here? Lol the place is small very small. This was my first time here and I had high hopes because of all the hype and instagram pictures. I ordered the spiced blood orange it tasted watered down and I didn't taste any cinnamon, ginger, or clove. The orange flavor was barely there. Sigh",
  rating: 2,
  biz_id: biz6.id,
  author_id: seed5.id,
)

Review.create!(
  body: "Came midday on a Tuesday and there was a small line that built up to about 15 people behind us within a few minutes of standing there. Still waited around 10 minutes to get our orders in. Another 5 minutes to get our drinks. We got the strawberry matcha latte, mango Fresca, and ube halaya. The strawberry matcha latte is their top seller and the one all over Instagram. It's pretty good! A different mix of flavors that work out. Mango Fresca was a decent drink but nothing spectacular I'd get again. The ube halaya is their seasonal special that I absolutely loved! It was ube and coconut milk basically, which is odd since I don't really care for coconut but these two complimented one another.",
  rating: 3,
  biz_id: biz7.id,
  author_id: seed4.id,
)

# coffe shops
coffee1 = Business.create!(
  biz_name: 'Jackson Place Cafe',
  category: "coffee",
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

coffee_file1 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.39.01+PM.png')
coffee_file2 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.39.10+PM.png')
coffee_file3 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.39.19+PM.png')
coffee1.photos.attach(io: coffee_file1, filename: 'coffee1')
coffee1.photos.attach(io: coffee_file2, filename: 'coffee2')
coffee1.photos.attach(io: coffee_file3, filename: 'coffee3')

coffee2 = Business.create!(
  biz_name: 'Reveille Coffee Co. Truck',
  category: "coffee",
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

coffee_file4 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.40.07+PM.png')
coffee_file5 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.40.17+PM.png')
coffee_file6 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.40.31+PM.png')
coffee2.photos.attach(io: coffee_file4, filename: 'coffee4')
coffee2.photos.attach(io: coffee_file5, filename: 'coffee5')
coffee2.photos.attach(io: coffee_file6, filename: 'coffee6')

coffee3 = Business.create!(
  biz_name: 'Chapter 2 Coffee',
  category: "coffee",
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

coffee_file7 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.41.06+PM.png')
coffee_file8 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.41.19+PM.png')
coffee_file9 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.41.30+PM.png')
coffee3.photos.attach(io: coffee_file7, filename: 'coffee7')
coffee3.photos.attach(io: coffee_file8, filename: 'coffee8')
coffee3.photos.attach(io: coffee_file9, filename: 'coffee9')

coffee4 = Business.create!(
  biz_name: 'Chapel Hill Coffee',
  category: "coffee",
  price: "$$",
  address_1: '670 Commercial St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94111',
  lat: '37.794210',
  lng: '-122.404240',
  rating: 4,
  business_info: "Serving hyper-local, small batch, like-minded businesses that care.",
  phone_number: "",
  website: "chapelhillcoffee.com",
  takes_reservations: "No",
  take_out: "Yes",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "Yes",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "Yes",
  good_for_groups: "No",
  outdoor_seating: "No",
  caters: "No",
  owner_id: seed3.id,
  hours: [
    ["8:00", "15:30"],	
    ["8:00", "15:30"],	
    ["8:00", "15:30"],	
    ["8:00", "15:30"],	
    ["8:00", "15:30"],	
    ["8:00", "15:30"],
    ["8:00", "15:30"]
  ]
)

coffee_file10 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.42.42+PM.png')
coffee_file11 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.42.52+PM.png')
coffee_file12 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.43.05+PM.png')
coffee4.photos.attach(io: coffee_file10, filename: 'coffee10')
coffee4.photos.attach(io: coffee_file11, filename: 'coffee11')
coffee4.photos.attach(io: coffee_file12, filename: 'coffee12')
 
coffee5 = Business.create!(
  biz_name: 'Joe & The Juice',
  category: "coffee",
  price: "$$",
  address_1: '301 Howard St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94105',
  lat: '37.789520',
  lng: '-122.394270',
  rating: 3,
  business_info: "We sell products to fund the most attractive youth culture in the world.",
  phone_number: "",
  website: "joejuice.com",
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
    ["6:00", "21:00"],	
    ["6:00", "21:00"],	
    ["6:00", "21:00"],	
    ["6:00", "21:00"],	
    ["6:00", "21:00"],	
    ["8:00", "19:00"],
    ["8:00", "18:00"]
  ]
)

coffee_file13 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.43.43+PM.png')
coffee_file14 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.43.51+PM.png')
coffee_file15 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.44.02+PM.png')
coffee5.photos.attach(io: coffee_file13, filename: 'coffee13')
coffee5.photos.attach(io: coffee_file14, filename: 'coffee14')
coffee5.photos.attach(io: coffee_file15, filename: 'coffee15')
 
coffee6 = Business.create!(
  biz_name: 'The Station SF',
  category: "coffee",
  price: "$$",
  address_1: '596 Pacific Ave',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94133',
  lat: '37.797150',
  lng: '-122.405240',
  rating: 3,
  business_info: "We focus on fresh, organic and local products as much as possible with our food offerings.  Creative and flavorful, breakfast and lunch options coupled with San Francisco roasted Sightglass Coffee drinks and cold pressed juices by Project Juice.",
  phone_number: "(415) 291-0690",
  website: "thestationsf.com",
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
  outdoor_seating: "Yes",
  caters: "Yes",
  owner_id: seed3.id,
  hours: [
    ["7:30", "16:00"],	
    ["7:30", "16:00"],	
    ["7:30", "16:00"],	
    ["7:30", "16:00"],	
    ["7:30", "16:00"],	
    ["9:00", "15:30"],
    ["9:00", "15:30"]
  ]
)

coffee_file16 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+4.15.40+PM.png')
coffee_file17 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+4.16.05+PM.png')
coffee_file18 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+4.16.16+PM.png')
coffee6.photos.attach(io: coffee_file16, filename: 'coffee16')
coffee6.photos.attach(io: coffee_file17, filename: 'coffee17')
coffee6.photos.attach(io: coffee_file18, filename: 'coffee18')
 
coffee7 = Business.create!(
  biz_name: 'Bluestone Lane',
  category: "coffee",
  price: "$$",
  address_1: '227 Front St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94111',
  lat: '37.799680',
  lng: '-122.400060',
  rating: 3,
  business_info: "Bluestone Lane Coffee is influenced from the renowned coffee culture hub of Melbourne Australia, where premium coffee is a way of life. Bluestone Lane offers a refined product proposition dedicated to producing the highest quality coffee and complementary foods, delivered in an engaging way.",
  phone_number: "(718) 374-6858",
  website: "bluestonelane.com",
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
    ["7:00", "17:00"],	
    ["7:00", "17:00"],	
    ["7:00", "17:00"],	
    ["7:00", "17:00"],	
    ["7:00", "17:00"],	
    ["8:00", "16:00"],
    ["8:00", "16:00"]
  ]
)

coffee_file19 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.43.43+PM.png')
coffee_file20 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.43.51+PM.png')
coffee_file21 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Coffee/Screen+Shot+2019-01-30+at+2.44.02+PM.png')
coffee7.photos.attach(io: coffee_file19, filename: 'coffee19')
coffee7.photos.attach(io: coffee_file20, filename: 'coffee20')
coffee7.photos.attach(io: coffee_file21, filename: 'coffee21')

# coffee reviews

Review.create!(
  body: "We all ordered hot coffee, which came in a glass carafe aside a colorful ceramic mug. For breakfast I got the avocado toast, which was delicious and filling. Whenever we needed something, it seemed like I had to make an effort to flag someone down, but the actual process of ordering and paying was seamless.",
  rating: 5,
  biz_id: coffee1.id,
  author_id: seed1.id,
)

Review.create!(
  body: "While I wouldn't rush to come here again, I truly enjoyed my experience and would recommend it to anyone looking for a new spot to check out in the Financial District. It's a few blocks away from Embarcadero Center, and it's open super early! Definitely lots of notable wins.",
  rating: 4,
  biz_id: coffee1.id,
  author_id: seed2.id,
)

Review.create!(
  body: "Efficient services, friendly staff, delicious food and beverage items. Some of the customers here are also very friendly. This is always a good thing. The Turkey Panini is delicious. Caffe Latte is one of my favorite beverage here. Latte art is absolutely beautiful and it is culinary creativity. Chocolate Croissant is one of my favorite pastry items here. I enjoy the texture of this pastry, the chocolate blends well with the croissant.",
  rating: 5,
  biz_id: coffee1.id,
  author_id: seed4.id,
)

Review.create!(
  body: "Huge fan! Their salads are spectacular. Kale salad with chicken is my go to. Their coffee is incredibly smooth! Staff is personable and remember your name. Their breakfast sandwich is heavenly and a must at some point. Go here often for meetings too! Killer bacon.",
  rating: 5,
  biz_id: coffee1.id,
  author_id: seed5.id,
)

Review.create!(
  body: "After having a lot of different avocado toasts, this coffee spot has made it into the Top 3! Not an easy feat when there are several places to choose from on the west coast! What really makes this cafe stand out is how you can add cherry tomatoes, prosciutto, and feta cheese to the avocado toast. They use whole grain bread that has a thick, nutty texture that makes you feel full after eating. With all the toppings, the avocado toast bursts with various, delicious flavors! Also, I recommend the oat latte, which is brewed dark and has a toasty barley flavor, if that is your thing. I love a creative twist on coffee from time to time! ",
  rating: 4,
  biz_id: coffee2.id,
  author_id: seed1.id,
)

Review.create!(
  body: "The only downsides would be the food portion and the lack of seating. This shop could've done better in making more efficient use of the space. My suggestion would be to remove the big table in the middle of the cafe and use that space to put some small tables, which could be combined into a larger table. Otherwise, you've got people awkwardly sharing one big table... If you are looking for a full on, big brunch, this is not the place for you. The portions cater to people who just want a simple, light lunch.",
  rating: 2,
  biz_id: coffee2.id,
  author_id: seed2.id,
)

Review.create!(
  body: "Regarding the food and drinks, I probably had one of the best slices of avocado toast in my life. The thick yet soft and chewy multigrain toasted bread Supported a bed of smashed avocado along with a perfectly poached egg. The entire creation was drizzled with olive oil and topped with chili flakes. I recommend you eat the toast as soon as possible as the bread will still be warm as well as the egg on top. 
",
  rating: 4,
  biz_id: coffee2.id,
  author_id: seed3.id,
)

Review.create!(
  body: "The only downsides would be the food portion and the lack of seating. This shop could've done better in making more efficient use of the space. My suggestion would be to remove the big table in the middle of the cafe and use that space to put some small tables, which could be combined into a larger table. Otherwise, you've got people awkwardly sharing one big table... If you are looking for a full on, big brunch, this is not the place for you. The portions cater to people who just want a simple, light lunch.",
  rating: 2,
  biz_id: coffee3.id,
  author_id: seed2.id,
)

Review.create!(
  body: "We all ordered hot coffee, which came in a glass carafe aside a colorful ceramic mug. For breakfast I got the avocado toast, which was delicious and filling. Whenever we needed something, it seemed like I had to make an effort to flag someone down, but the actual process of ordering and paying was seamless.",
  rating: 5,
  biz_id: coffee3.id,
  author_id: seed1.id,
)

Review.create!(
  body: "Huge fan! Their salads are spectacular. Kale salad with chicken is my go to. Their coffee is incredibly smooth! Staff is personable and remember your name. Their breakfast sandwich is heavenly and a must at some point. Go here often for meetings too! Killer bacon.",
  rating: 5,
  biz_id: coffee3.id,
  author_id: seed3.id,
)

Review.create!(
  body: "Efficient services, friendly staff, delicious food and beverage items. Some of the customers here are also very friendly. This is always a good thing. The Turkey Panini is delicious. Caffe Latte is one of my favorite beverage here. Latte art is absolutely beautiful and it is culinary creativity. Chocolate Croissant is one of my favorite pastry items here. I enjoy the texture of this pastry, the chocolate blends well with the croissant.",
  rating: 5,
  biz_id: coffee4.id,
  author_id: seed4.id,
)

Review.create!(
  body: "The only downsides would be the food portion and the lack of seating. This shop could've done better in making more efficient use of the space. My suggestion would be to remove the big table in the middle of the cafe and use that space to put some small tables, which could be combined into a larger table. Otherwise, you've got people awkwardly sharing one big table... If you are looking for a full on, big brunch, this is not the place for you. The portions cater to people who just want a simple, light lunch.",
  rating: 2,
  biz_id: coffee4.id,
  author_id: seed5.id,
)

Review.create!(
  body: "So this place has one guy taking all the orders at the counter and two women that I saw making the drinks and food. Plus they also cleaned the tables. Seemed like there was always a line. They call your name for your coffee but bring your food to your table. They are always busy and they got our drinks and food out in a fairly good amount of time. ",
  rating: 2,
  biz_id: coffee4.id,
  author_id: seed1.id,
)

Review.create!(
  body: "The only downsides would be the food portion and the lack of seating. This shop could've done better in making more efficient use of the space. My suggestion would be to remove the big table in the middle of the cafe and use that space to put some small tables, which could be combined into a larger table. Otherwise, you've got people awkwardly sharing one big table... If you are looking for a full on, big brunch, this is not the place for you. The portions cater to people who just want a simple, light lunch.",
  rating: 2,
  biz_id: coffee5.id,
  author_id: seed5.id,
)

Review.create!(
  body: "While I wouldn't rush to come here again, I truly enjoyed my experience and would recommend it to anyone looking for a new spot to check out in the Financial District. It's a few blocks away from Embarcadero Center, and it's open super early! Definitely lots of notable wins.",
  rating: 4,
  biz_id: coffee5.id,
  author_id: seed2.id,
)

Review.create!(
  body: "We waited for the food...and waited...I even asked my wife if she thought they'd forgotten us. Sure enough, the server came by, very apologetic. She explained that there was a mixup, and that our order was now in. Brought us a very good cookie (we gnawed on it while we waited.)",
  rating: 3,
  biz_id: coffee5.id,
  author_id: seed1.id,
)

Review.create!(
  body: "We waited for the food...and waited...I even asked my wife if she thought they'd forgotten us. Sure enough, the server came by, very apologetic. She explained that there was a mixup, and that our order was now in. Brought us a very good cookie (we gnawed on it while we waited.)",
  rating: 3,
  biz_id: coffee6.id,
  author_id: seed1.id,
)

Review.create!(
  body: "Efficient services, friendly staff, delicious food and beverage items. Some of the customers here are also very friendly. This is always a good thing. The Turkey Panini is delicious. Caffe Latte is one of my favorite beverage here. Latte art is absolutely beautiful and it is culinary creativity. Chocolate Croissant is one of my favorite pastry items here. I enjoy the texture of this pastry, the chocolate blends well with the croissant.",
  rating: 5,
  biz_id: coffee6.id,
  author_id: seed2.id,
)

Review.create!(
  body: "Huge fan! Their salads are spectacular. Kale salad with chicken is my go to. Their coffee is incredibly smooth! Staff is personable and remember your name. Their breakfast sandwich is heavenly and a must at some point. Go here often for meetings too! Killer bacon.",
  rating: 5,
  biz_id: coffee6.id,
  author_id: seed3.id,
)

Review.create!(
  body: "While I wouldn't rush to come here again, I truly enjoyed my experience and would recommend it to anyone looking for a new spot to check out in the Financial District. It's a few blocks away from Embarcadero Center, and it's open super early! Definitely lots of notable wins.",
  rating: 4,
  biz_id: coffee7.id,
  author_id: seed2.id,
)

Review.create!(
  body: "After having a lot of different avocado toasts, this coffee spot has made it into the Top 3! Not an easy feat when there are several places to choose from on the west coast! What really makes this cafe stand out is how you can add cherry tomatoes, prosciutto, and feta cheese to the avocado toast. They use whole grain bread that has a thick, nutty texture that makes you feel full after eating. With all the toppings, the avocado toast bursts with various, delicious flavors! Also, I recommend the oat latte, which is brewed dark and has a toasty barley flavor, if that is your thing. I love a creative twist on coffee from time to time! ",
  rating: 4,
  biz_id: coffee7.id,
  author_id: seed1.id,
)

Review.create!(
  body: "The only downsides would be the food portion and the lack of seating. This shop could've done better in making more efficient use of the space. My suggestion would be to remove the big table in the middle of the cafe and use that space to put some small tables, which could be combined into a larger table. Otherwise, you've got people awkwardly sharing one big table... If you are looking for a full on, big brunch, this is not the place for you. The portions cater to people who just want a simple, light lunch.",
  rating: 2,
  biz_id: coffee7.id,
  author_id: seed5.id,
)

#bars
bar1 = Business.create!(
  biz_name: 'Pagan Idol',
  category: "beer",
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

bar_file1 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.27.55+PM.png')
bar_file2 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.28.10+PM.png')
bar_file3 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.28.20+PM.png')
bar1.photos.attach(io: bar_file1, filename: 'bar1')
bar1.photos.attach(io: bar_file2, filename: 'bar2')
bar1.photos.attach(io: bar_file3, filename: 'bar3')

bar2 = Business.create!(
  biz_name: 'The Pink Elephant Alibi',
  category: "beer",
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

bar_file4 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.33.03+PM.png')
bar_file5 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.33.25+PM.png')
bar_file6 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.33.42+PM.png')
bar2.photos.attach(io: bar_file4, filename: 'bar4')
bar2.photos.attach(io: bar_file5, filename: 'bar5')
bar2.photos.attach(io: bar_file6, filename: 'bar6')

bar3 = Business.create!(
  biz_name: 'The View Lounge',
  category: "beer",
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

bar_file7 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.36.40+PM.png')
bar_file8 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.37.00+PM.png')
bar_file9 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.37.10+PM.png')
bar3.photos.attach(io: bar_file7, filename: 'bar7')
bar3.photos.attach(io: bar_file8, filename: 'bar8')
bar3.photos.attach(io: bar_file9, filename: 'bar9')

bar4 = Business.create!(
  biz_name: 'Local Edition',
  category: "beer",
  price: "$$",
  address_1: '691 Market St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94105',
  lat: '37.787410',
  lng: '-122.403000',
  rating: 4,
  business_info: "Local Edition is more than just a cocktail bar.",
  phone_number: "(415) 795-1375",
  website: "https://www.localeditionsf.com/",
  takes_reservations: "Yes",
  take_out: "No",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "No",
  pets_allowed: "No",
  wheelchair_accessible: "No",
  good_for_kids: "No",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "No",
  owner_id: seed3.id,
  hours: [
    ["5:00", "2:00"],	
    ["5:00", "2:00"],	
    ["5:00", "2:00"],	
    ["5:00", "2:00"],	
    ["4:30", "2:00"],	
    ["7:00", "2:00"],
    ["7:00", "2:00"]
  ]
)

bar_file10 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.39.56+PM.png')
bar_file11 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.40.17+PM.png')
bar_file12 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.40.35+PM.png')
bar4.photos.attach(io: bar_file10, filename: 'bar10')
bar4.photos.attach(io: bar_file11, filename: 'bar11')
bar4.photos.attach(io: bar_file12, filename: 'bar12')

bar5 = Business.create!(
  biz_name: 'The Royal Exchange',
  category: "beer",
  price: "$$",
  address_1: '301 Sacramento St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94111',
  lat: '37.794160',
  lng: '-122.399140',
  rating: 3,
  business_info: "Pub grub, lots of beers on tap & TVs tuned to sports highlight this popular Financial District bar.",
  phone_number: "(415) 956-1710",
  website: "royalexchange.com",
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
  caters: "Yes",
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

bar_file13 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.43.00+PM.png')
bar_file14 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.43.09+PM.png')
bar_file15 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-30+at+6.43.23+PM.png')
bar5.photos.attach(io: bar_file13, filename: 'bar13')
bar5.photos.attach(io: bar_file14, filename: 'bar14')
bar5.photos.attach(io: bar_file15, filename: 'bar15')

bar6 = Business.create!(
  biz_name: 'Barbarossa Lounge',
  category: "beer",
  price: "$$",
  address_1: '714 Montgomery St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94111',
  lat: '37.795759',
  lng: '-122.403258',
  rating: 3,
  business_info: "As one of the oldest buildings in San Francisco, having survived the famous 1906 earthquake, Barbarossa will showcase an entirely new concept--one that is full with legend and mystery as the space was used as a jailhouse in the 19th century.",
  phone_number: "(415) 434-4204",
  website: "barbarossalounge.com",
  takes_reservations: "Yes",
  take_out: "No",
  delivery: "No",
  credit_card: "Yes",
  bike_parking: "Yes",
  free_wifi: "Yes",
  pets_allowed: "No",
  wheelchair_accessible: "Yes",
  good_for_kids: "No",
  good_for_groups: "Yes",
  outdoor_seating: "No",
  caters: "Yes",
  owner_id: seed3.id,
  hours: [
    ["16:00", "24:00"],	
    ["16:00", "24:00"],	
    ["16:00", "24:00"],	
    ["16:00", "02:00"],	
    ["16:00", "02:00"],	
    ["18:00", "02:00"],
    ["13:30", "19:00"]
  ]
)

bar_file16 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-31+at+9.36.06+AM.png')
bar_file17 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-31+at+9.36.21+AM.png')
bar_file18 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-31+at+9.36.28+AM.png')
bar6.photos.attach(io: bar_file16, filename: 'bar16')
bar6.photos.attach(io: bar_file17, filename: 'bar17')
bar6.photos.attach(io: bar_file18, filename: 'bar18')

bar7 = Business.create!(
  biz_name: 'The Royal Exchange',
  category: "beer",
  price: "$$",
  address_1: '473 Broadway St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94133',
  lat: '37.797900',
  lng: '-122.405002',
  rating: 3,
  business_info: "Established in 2011. Monroe opened in 2011 in the historic Jazz Workshop building at 473 Broadway Street. 1920's flapper era inspired bar, lounge and event space located in the heart of North Beach.",
  phone_number: "(415) 772-9002",
  website: "monroesf.com",
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
    ["18:00", "02:00"],	
    ["18:00", "02:00"],	
    ["18:00", "02:00"],	
    ["18:00", "02:00"],	
    ["18:00", "02:00"],	
    ["18:00", "02:00"],
    ["18:00", "02:00"]
  ]
)

bar_file19 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-31+at+9.38.46+AM.png')
bar_file20 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-31+at+9.39.00+AM.png')
bar_file21 = open('https://s3-us-west-1.amazonaws.com/yulp-project-public/Bars/Screen+Shot+2019-01-31+at+9.39.13+AM.png')
bar7.photos.attach(io: bar_file19, filename: 'bar19')
bar7.photos.attach(io: bar_file20, filename: 'bar20')
bar7.photos.attach(io: bar_file21, filename: 'bar21')

#bar reviews
Review.create!(
  body: "Was here for my company's 2018 holiday party and Monroe didn't disappoint. From the strong and well made drinks, delicious finger food and cozy back room by the second bar, it was an all around great time. The decor is both comfortable and visually pleasing with a long table in the front, long bar for patrons and cozy booths.",
  rating: 5,
  biz_id: bar1.id,
  author_id: seed1.id,
)

Review.create!(
  body: "I've also tried their moscow mule, amf, and sex on the beach. I typically don't like moscow mules since I don't like the taste of ginger,  but theirs was sweeter and the ginger was more subtle. Their amf was very strong but a bit too sweet than I would have liked it. And the sex on the beach tasted very different than any other...it was a lot more sour than most places and it was tinted red.",
  rating: 4,
  biz_id: bar1.id,
  author_id: seed2.id,
)

Review.create!(
  body: "I was here for a private event, so I can't really testify to what you might find on a regular night, and even if I had come on a regular night I don't think I'm the best judge of some of their attributes: I'm not a drinker and though I can say the bar is long and prominent, I have no idea if they sling a good cocktail.",
  rating: 4,
  biz_id: bar1.id,
  author_id: seed5.id,
)

Review.create!(
  body: "I'm not quite sure what kind of crowd they attract on weekends, so I can't really review their bar/music scene. But if you're looking to host a private party (whether it be a birthday or corporate event), you're not going to find a cooler venue. Plus, there are plenty of delicious restaurants that are within walking distance (if you're hungry before or after a night-on-the-town).",
  rating: 3,
  biz_id: bar1.id,
  author_id: seed4.id,
)

Review.create!(
  body: "The bar is very crowded,very expensive,and  not worth the one hour long queue to get in.",
  rating: 1,
  biz_id: bar2.id,
  author_id: seed4.id,
)

Review.create!(
  body: "Avoid hosting an event here if you want anyone to be able to speak to one another. I've been here now for 3-4 private events and in each case the music is so absurdly loud that it's impossible to have a normal conversation. At my last visit, multiple requests by multiple people to lower the volume were ignored by staff. Shame to spend thousands of dollars and then be ignored. Drinks are good, food is good.",
  rating: 3,
  biz_id: bar2.id,
  author_id: seed3.id,
)

Review.create!(
  body: "My friends and I moved closer to the DJ booth half way through the 80's set list. The DJs switched from time to time but all 3 or 4 of them were really great. The playlist was great, my body kept moving. I probably burned through all the calories I ate earlier. The crowd, however, was amusing; their dancing was a mix of what looked like martial arts and I'm not even sure what else to call it. Overall, I enjoyed my night",
  rating: 3,
  biz_id: bar2.id,
  author_id: seed2.id,
)

Review.create!(
  body: "I was here for a private event, so I can't really testify to what you might find on a regular night, and even if I had come on a regular night I don't think I'm the best judge of some of their attributes: I'm not a drinker and though I can say the bar is long and prominent, I have no idea if they sling a good cocktail.",
  rating: 4,
  biz_id: bar3.id,
  author_id: seed1.id,
)

Review.create!(
  body: "I'm not quite sure what kind of crowd they attract on weekends, so I can't really review their bar/music scene. But if you're looking to host a private party (whether it be a birthday or corporate event), you're not going to find a cooler venue. Plus, there are plenty of delicious restaurants that are within walking distance (if you're hungry before or after a night-on-the-town).",
  rating: 3,
  biz_id: bar3.id,
  author_id: seed4.id,
)

Review.create!(
  body: "My friend and I spent our NYE here and it was so perfect, more than we expected. The space is absolutely amazing, very elegant and everyone who working was hardworking and sweet. Thank you for such a wonderful night! Hope to come back soon!",
  rating: 4,
  biz_id: bar3.id,
  author_id: seed5.id,
)

Review.create!(
  body: "My friend and I spent our NYE here and it was so perfect, more than we expected. The space is absolutely amazing, very elegant and everyone who working was hardworking and sweet. Thank you for such a wonderful night! Hope to come back soon!",
  rating: 4,
  biz_id: bar4.id,
  author_id: seed4.id,
)

Review.create!(
  body: "Ugh, this place just reminded me that I'm no longer a recent grad. Went to their Friday happy hour which seemed good on paper. We got there at 7 and were met with a crowd of people, long lines to get drinks and really loud music. Left after one drink, because apparently I am my parents now and those things bother me.",
  rating: 3,
  biz_id: bar4.id,
  author_id: seed3.id,
)

Review.create!(
  body: "I've also tried their moscow mule, amf, and sex on the beach. I typically don't like moscow mules since I don't like the taste of ginger,  but theirs was sweeter and the ginger was more subtle. Their amf was very strong but a bit too sweet than I would have liked it. And the sex on the beach tasted very different than any other...it was a lot more sour than most places and it was tinted red.",
  rating: 4,
  biz_id: bar4.id,
  author_id: seed5.id,
)

Review.create!(
  body: "I've also tried their moscow mule, amf, and sex on the beach. I typically don't like moscow mules since I don't like the taste of ginger,  but theirs was sweeter and the ginger was more subtle. Their amf was very strong but a bit too sweet than I would have liked it. And the sex on the beach tasted very different than any other...it was a lot more sour than most places and it was tinted red.",
  rating: 4,
  biz_id: bar5.id,
  author_id: seed1.id,
)

Review.create!(
  body: "Avoid hosting an event here if you want anyone to be able to speak to one another. I've been here now for 3-4 private events and in each case the music is so absurdly loud that it's impossible to have a normal conversation. At my last visit, multiple requests by multiple people to lower the volume were ignored by staff. Shame to spend thousands of dollars and then be ignored. Drinks are good, food is good.",
  rating: 3,
  biz_id: bar5.id,
  author_id: seed5.id,
)

Review.create!(
  body: "I've also tried their moscow mule, amf, and sex on the beach. I typically don't like moscow mules since I don't like the taste of ginger,  but theirs was sweeter and the ginger was more subtle. Their amf was very strong but a bit too sweet than I would have liked it. And the sex on the beach tasted very different than any other...it was a lot more sour than most places and it was tinted red.",
  rating: 4,
  biz_id: bar5.id,
  author_id: seed3.id,
)

Review.create!(
  body: "Ugh, this place just reminded me that I'm no longer a recent grad. Went to their Friday happy hour which seemed good on paper. We got there at 7 and were met with a crowd of people, long lines to get drinks and really loud music. Left after one drink, because apparently I am my parents now and those things bother me.",
  rating: 3,
  biz_id: bar6.id,
  author_id: seed1.id,
)

Review.create!(
  body: "My friend and I spent our NYE here and it was so perfect, more than we expected. The space is absolutely amazing, very elegant and everyone who working was hardworking and sweet. Thank you for such a wonderful night! Hope to come back soon!",
  rating: 4,
  biz_id: bar6.id,
  author_id: seed2.id,
)

Review.create!(
  body: "My friends and I moved closer to the DJ booth half way through the 80's set list. The DJs switched from time to time but all 3 or 4 of them were really great. The playlist was great, my body kept moving. I probably burned through all the calories I ate earlier. The crowd, however, was amusing; their dancing was a mix of what looked like martial arts and I'm not even sure what else to call it. Overall, I enjoyed my night",
  rating: 3,
  biz_id: bar6.id,
  author_id: seed5.id,
)

Review.create!(
  body: "I'm not quite sure what kind of crowd they attract on weekends, so I can't really review their bar/music scene. But if you're looking to host a private party (whether it be a birthday or corporate event), you're not going to find a cooler venue. Plus, there are plenty of delicious restaurants that are within walking distance (if you're hungry before or after a night-on-the-town).",
  rating: 3,
  biz_id: bar7.id,
  author_id: seed1.id,
)

Review.create!(
  body: "The bar is very crowded,very expensive,and  not worth the one hour long queue to get in.",
  rating: 1,
  biz_id: bar7.id,
  author_id: seed2.id,
)

Review.create!(
  body: "My friends and I moved closer to the DJ booth half way through the 80's set list. The DJs switched from time to time but all 3 or 4 of them were really great. The playlist was great, my body kept moving. I probably burned through all the calories I ate earlier. The crowd, however, was amusing; their dancing was a mix of what looked like martial arts and I'm not even sure what else to call it. Overall, I enjoyed my night",
  rating: 3,
  biz_id: bar7.id,
  author_id: seed5.id,
)

Review.create!(
  body: "Ugh, this place just reminded me that I'm no longer a recent grad. Went to their Friday happy hour which seemed good on paper. We got there at 7 and were met with a crowd of people, long lines to get drinks and really loud music. Left after one drink, because apparently I am my parents now and those things bother me.",
  rating: 3,
  biz_id: bar7.id,
  author_id: seed4.id,
)