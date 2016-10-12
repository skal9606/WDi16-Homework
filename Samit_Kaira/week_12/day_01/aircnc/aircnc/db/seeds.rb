# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#HOUSES
House.destroy_all
h1 = House.create :name => "Sugarloaf", :address => "28 Caldwell Street, Darlinghurst, Sydney, NSW, 2010", :city => "Sydney", :blurb => "A lovely hole inner city hole in the wall", :about => "2 beds, 2 rooms", :availability => true, :owner => "Samwise Gamgee", :price => 400, :amenities => "Kitchen, TV, Internet", :house_rules => "Not suitable for pets",
:image1 => "https://i2.au.reastatic.net/800x600/0b006cd2ad32dbb782ee437bbe22ebad9700d9a102481b22fbc2555f08742d8a/main.jpg",
:image2 => "https://i2.au.reastatic.net/1240x759-resize,extend,r=33,g=40,b=46/878c57779954600e3017304d05776de80ec829e72881911bedee68e0b69f12f2/image2.jpg",
:image3 => "https://i2.au.reastatic.net/1240x759-resize,extend,r=33,g=40,b=46/8533c2524126d67687918e0f765da752177666e2648e3612f941c3b15198d819/image4.jpg",
:image4 => "https://i2.au.reastatic.net/1240x759-resize,extend,r=33,g=40,b=46/701a5bc427b2a95a92d4ba90d057eb33e724b236bfedaa3e65ab3d95b4b71a4e/image7.jpg",
:image5 => "https://i2.au.reastatic.net/1240x759-resize,extend,r=33,g=40,b=46/09dd81c52de443e9c948d9201e8f04327b8190ba5304f2dec1de2e5dc2b733a1/image8.jpg"

h2 = House.create :name => "Mum's the word", :address => "24 Florey Avenue, Pymble, Sydney, NSW, 2073", :city => "Sydney", :blurb => "A quiet and peaceful residence on the North Shore", :about => "1 bed, 1 room", :availability => true, :owner => "Rajni Kalra", :price => 300, :amenities => "Kitchen, TV, Internet", :house_rules => "Not suitable for old people",
:image1 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1473639112/bw_photo_14322_5411205.jpg",
:image2 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1473639116/bw_photo_14322_1149917.jpg",
:image3 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1473639119/bw_photo_14322_2978707.jpg",
:image4 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1473639137/bw_photo_14322_3452816.jpg",
:image5 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1473639133/bw_photo_14322_5819575.jpg"

h3 = House.create :name => "The Womb", :address => "147 Womerah Avenue, Darlinghurst, Sydney, NSW, 2010", :city => "Sydney", :blurb => "Preeminent inner city residence a stone's throw from Allan's Krog", :about => "Entire house", :availability => true, :owner => "YZH", :price => 650, :amenities => "Kitchen, TV, Internet", :house_rules => "Not suitable for people whose names start with V",
:image1 => "https://i2.au.reastatic.net/1440x759-resize,extend,r=33,g=40,b=46/a11c4be50a3232e4f75dfce69d22f1667df720af91b50ed3592656d323fd0150/image2.jpg",
:image2 => "https://i2.au.reastatic.net/1440x759-resize,extend,r=33,g=40,b=46/d2720927366ae2fd28dc229c8eb00bfceaeb4055893664a34595ef21e0e97fe1/image3.jpg",
:image3 => "https://i2.au.reastatic.net/1440x759-resize,extend,r=33,g=40,b=46/b617c24c1cd894403fa4099fe39e015c465753487fd2f10f9078e030a81f78e7/image5.jpg",
:image4 => "https://i2.au.reastatic.net/1440x759-resize,extend,r=33,g=40,b=46/34765f1d88a15a77eb6265a72e53419f62b71f88c82ccf2344784927dfff11c1/image6.jpg",
:image5 => "https://i2.au.reastatic.net/1440x759-resize,extend,r=33,g=40,b=46/2ef3fe29f9b46c2b351a512878618c6f9152797653bde07c32113ffc46586fff/main.jpg"

h4 = House.create :name => "Inner west paradise", :address => "14A John Street, Hunters Hill, Sydney, NSW, 2110", :city => "Sydney", :blurb => "An inner west beauty with waterfront access", :about => "Entire house", :availability => true, :owner => "John Johnson", :price => 800, :amenities => "Kitchen, TV, Internet", :house_rules => "Not suitable for people allergic to cats",
:image1 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1475118836/bw_photo_14440_2395854.jpg",
:image2 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1475118840/bw_photo_14440_82106.jpg",
:image3 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1475118886/bw_photo_14440_6468959.jpg",
:image4 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1475118844/bw_photo_14440_3343139.jpg",
:image5 => "https://res.cloudinary.com/hlha8aud5/image/upload/c_fill,h_1558,w_2336/c_limit,dpr_1.0,f_auto,w_1168/v1475118889/bw_photo_14440_8130901.jpg"

h5 = House.create :name => "A beachy existence", :address => "22 Newcastle Street, Stockton, NSW, 2295", :city => "Newcastle", :blurb => "A beautiful home merely minutes from Stockton Beach!", :about => "Entire house", :availability => true, :owner => "John Johnson", :price => 1000, :amenities => "Kitchen, TV, Internet", :house_rules => "Not suitable for people allergic to cats",
:image1 => "http://img.agentaccount.com/9baf2a735c4928709adf01813eca27ee9a7d5be9",
:image2 => "http://img.agentaccount.com/e4afbcbc0d29463b7ed327a41273b1db4d36056d",
:image3 => "http://img.agentaccount.com/e10edc683a66707e917f436285beaa1daa1e2190",
:image4 => "http://img.agentaccount.com/17f28653c8b9899609b87ab8ab58e1c89b0699b0",
:image5 => "http://img.agentaccount.com/a3c1687e2ac3969a3efb0636535f5de3fd7cb5d9"

h6 = House.create :name => "New Lambton classic", :address => "3 Birdwood Street, New Lambton, NSW, 2305", :city => "New Lambton", :blurb => "A beautifully renovated home on one of the best streets in New Lambton", :about => "Entire house", :availability => true, :owner => "John Johnson", :price => 1100, :amenities => "Kitchen, TV, Internet", :house_rules => "Not suitable for people allergic to cats",
:image1 => "http://img.agentaccount.com/26f2ee213210d31fa1ddd197cbc3e36847de17f5",
:image2 => "http://img.agentaccount.com/1fb16f1d254db072ae014b45593614afa74d6df8",
:image3 => "http://img.agentaccount.com/48c305f03348dbc340fc012ad55b6787d235947c",
:image4 => "http://img.agentaccount.com/e239fee2f58dd086a98d97f85ab0be24b1c000b7",
:image5 => "http://img.agentaccount.com/56f4cd88a536aa0c0e8c8f3eb8f14aa540a482fe"



#BOOKINGS
Booking.destroy_all
b1 = Booking.create :start_date => "2016/10/10", :end_date => "2016/10/13", :guests => 4
b2 = Booking.create :start_date => "2016/10/14", :end_date => "2016/10/16", :guests => 2

b3 = Booking.create :start_date => "2016/10/18", :end_date => "2016/10/22", :guests => 3
b4 = Booking.create :start_date => "2016/10/24", :end_date => "2016/10/28", :guests => 1

b5 = Booking.create :start_date => "2016/10/10", :end_date => "2016/10/13", :guests => 5
b6 = Booking.create :start_date => "2016/10/14", :end_date => "2016/10/16", :guests => 4

b7 = Booking.create :start_date => "2016/10/10", :end_date => "2016/10/13", :guests => 4
b8 = Booking.create :start_date => "2016/10/14", :end_date => "2016/10/16", :guests => 3

h1.bookings << b1 << b2
h2.bookings << b3 << b4
h3.bookings << b5
h4.bookings << b6
h5.bookings << b7
h6.bookings << b8


#COMMENTS
Comment.destroy_all
c1 = Comment.create :author => "Stevo99", :content =>"This was the best place I've ever stayed!"
c2 = Comment.create :author => "Jimbo100", :content =>"Abslutely awful place with an awful host"
c3 = Comment.create :author => "MarkyMark", :content =>"Amazing location with an amazing backyard"

c4 = Comment.create :author => "Freddy", :content =>"One of the best houses I've ever set my eyes on"
c5 = Comment.create :author => "JoeAndCo", :content =>"Oh lord, this was the best!"
c6 = Comment.create :author => "Benito", :content =>"Filthy, dirty, dangerous. Never again"

c7 = Comment.create :author => "Pepito", :content =>"Pretty meh to be honest"
c8 = Comment.create :author => "Alfred", :content =>"Nothing like the advertisement suggested - the hosts are very sneaky"
c9 = Comment.create :author => "Dazzle", :content =>"Me and my mother came for a weekend last year and we just loved the area!"

c10 = Comment.create :author => "BillC", :content =>"This was the best place I've ever stayed!"
c11 = Comment.create :author => "Ronaldinho", :content =>"Football has taken me many places Hot places, cold places, exhilarating places and, other places. But nothing has ever compared to this"
c12 = Comment.create :author => "MrT", :content =>"Yes, yes, a thousand times yes"

h1.comments << c1 << c2
h2.comments << c3 << c4
h3.comments << c5 << c6
h4.comments << c7 << c8
h5.comments << c9 << c10
h6.comments << c11 << c12


#USERS
User.destroy_all
u1 = User.create :name => "Admin", :age=>30, :email => "admin@ga.co", :password => "chicken", :password_confirmation => "chicken", :admin => true
u2 = User.create :name => "Jonesy", :age=>40, :email => "jonesy@ga.co", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Badger", :age=>50, :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken"

u2.bookings << b1 << b3 << b5 << b7
u3.bookings << b2 << b4 << b6 << b8
