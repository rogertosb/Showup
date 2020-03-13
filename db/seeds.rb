# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

# Purges all data before seeding

Event.destroy_all
User.destroy_all
Ticket.destroy_all
Order.destroy_all

# --------------------------------------------------------------------------------------------#

# Creates 2 users with organizer type


o1 = User.create!(
  first_name: nil,
  last_name: nil,
  organizer_name: "Le Wagon",
  user_type: "organizer",
  email: "lewagon@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_o1 = URI.open('https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-fe76916e1b923ade71e253ae6dc031d936e5e8eebac4e26b0fbac650ea6ee360.png')
o1.avatar.attach(io: file_o1, filename: 'nes.png', content_type: 'image/png')

o2 = User.create!(
  first_name: nil,
  last_name: nil,
  organizer_name: "HIVE Blockchain Society",
  user_type: "organizer",
  email: "hive@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_o2 = URI.open('https://media-exp1.licdn.com/dms/image/C560BAQHS3evhUovLrg/company-logo_200_200/0?e=2159024400&v=beta&t=m3PX3wFkQvKkhT2SZFelExdkWACqGDkBFFd9J1lucVk')
o2.avatar.attach(io: file_o2, filename: 'nes.png', content_type: 'image/png')

puts "#{User.all.count} users created"

# --------------------------------------------------------------------------------------------#

# Creates 4 users with attendee type

a1 = User.create!(
  first_name: "Max",
  last_name: "Hendrickx",
  organizer_name: nil,
  user_type: "attendee",
  email: "max@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a1 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a1.avatar.attach(io: file_a1, filename: 'nes.png', content_type: 'image/png')

a2 = User.create!(
  first_name: "Xav",
  last_name: "Auffray",
  organizer_name: nil,
  user_type: "attendee",
  email: "xav@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a2 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a2.avatar.attach(io: file_a2, filename: 'nes.png', content_type: 'image/png')

a3 = User.create!(
  first_name: "Gee",
  last_name: "Veldekens",
  organizer_name: nil,
  user_type: "attendee",
  email: "roger@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a3 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a3.avatar.attach(io: file_a3, filename: 'nes.png', content_type: 'image/png')


a4 = User.create!(
  first_name: "Rog",
  last_name: "Tosbotn",
  organizer_name: nil,
  user_type: "attendee",
  email: "gee@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a4 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a4.avatar.attach(io: file_a4, filename: 'nes.png', content_type: 'image/png')

a5 = User.create!(
  first_name: "Hal",
  last_name: "Leech",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee5@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a5 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a5.avatar.attach(io: file_a5, filename: 'nes.png', content_type: 'image/png')

a6 = User.create!(
  first_name: "Amelia",
  last_name: "Donovan",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee6@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a6 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a6.avatar.attach(io: file_a6, filename: 'nes.png', content_type: 'image/png')

a7 = User.create!(
  first_name: "Lenny",
  last_name: "Hussain",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee7@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a7 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a7.avatar.attach(io: file_a7, filename: 'nes.png', content_type: 'image/png')

a8 = User.create!(
  first_name: "Lilly-Grace",
  last_name: "Leonard",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee8@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a8 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a8.avatar.attach(io: file_a8, filename: 'nes.png', content_type: 'image/png')

a9 = User.create!(
  first_name: "Hanna",
  last_name: "Booker",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee9@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a9 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a9.avatar.attach(io: file_a9, filename: 'nes.png', content_type: 'image/png')

a10 = User.create!(
  first_name: "Layan",
  last_name: "Steele",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee10@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a10 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a10.avatar.attach(io: file_a10, filename: 'nes.png', content_type: 'image/png')

a11 = User.create!(
  first_name: "Dolly",
  last_name: "Ramos",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee11@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a11 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a11.avatar.attach(io: file_a11, filename: 'nes.png', content_type: 'image/png')

a12 = User.create!(
  first_name: "Marlie",
  last_name: "Morgan",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee12@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a12 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a12.avatar.attach(io: file_a12, filename: 'nes.png', content_type: 'image/png')

a13 = User.create!(
  first_name: "Kit",
  last_name: "Cortes",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee13@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a13 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a13.avatar.attach(io: file_a13, filename: 'nes.png', content_type: 'image/png')

a14 = User.create!(
  first_name: "Corrina",
  last_name: "Reader",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee14@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a14 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a14.avatar.attach(io: file_a14, filename: 'nes.png', content_type: 'image/png')

a15 = User.create!(
  first_name: "Sioned",
  last_name: "Wilder",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee15@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a15 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a15.avatar.attach(io: file_a15, filename: 'nes.png', content_type: 'image/png')

a16 = User.create!(
  first_name: "Isa",
  last_name: "Coles",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee16@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a16 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a16.avatar.attach(io: file_a16, filename: 'nes.png', content_type: 'image/png')

a17 = User.create!(
  first_name: "Kiara",
  last_name: "Broadhurst",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee17@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a17 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a17.avatar.attach(io: file_a17, filename: 'nes.png', content_type: 'image/png')

a18 = User.create!(
  first_name: "Shae",
  last_name: "Jennings",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee18@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a18 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a18.avatar.attach(io: file_a18, filename: 'nes.png', content_type: 'image/png')

a19 = User.create!(
  first_name: "Anderson",
  last_name: "Senior",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee19@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a19 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a19.avatar.attach(io: file_a19, filename: 'nes.png', content_type: 'image/png')

a20 = User.create!(
  first_name: "Sumayya",
  last_name: "Velazquez",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee20@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a20 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a20.avatar.attach(io: file_a20, filename: 'nes.png', content_type: 'image/png')

a21 = User.create!(
  first_name: "Alanis",
  last_name: "Alanis",
  organizer_name: nil,
  user_type: "attendee",
  email: "attendee21@test.com",
  password: "hellohello",
  password_confirmation: "hellohello"
)
file_a21 = URI.open('https://i.imgur.com/zlB6NdR.jpg')
a21.avatar.attach(io: file_a21, filename: 'nes.png', content_type: 'image/png')


puts "#{User.all.count} users created"
# --------------------------------------------------------------------------------------------#

# Creates events
o1.reload
e1 = Event.create!(
  user_id: o1.id,
  title: "Le Wagon Demo Day Batch 362",
  description: "
Join us at Be Central this 13th of March to discover the projects created by the students of the Winter Batch of Le Wagon Brussels.

What's better than a Demo Day to finish in style? If you've ever wondered what students learn at Le Wagon, this event is made for you! The students of the batch #362 will pitch the projects they coded during the last 10 days of the 9-week FullStack program.

Be prepared, it will rock! This is also the opportunity to:

• Meet our team

• Hire a developer / CTO

• Find a cofounder

• Invest in great talent

• See how much you can learn in 9 weeks!

We will then celebrate the end of this journey and most importantly new beginnings, surrounded by great company & drinks!

This event is Free, but registration is mandatory!

Program:

6:15 pm: Arrival

6:30 pm: Le Wagon introduction & student pitches

7:30 pm: Drink

Le Wagon is Europe's leading coding school for entrepreneurs and creative people. We are now present in 35 cities worldwide, with over 200 startups and 6400+ alumni, and have been rated the #1 coding bootcamp worldwide on Course Report & Switchup!

Le Wagon teaches students to develop web applications from scratch. Our cutting-edge curriculum and world-class teachers give students all the skills and tools needed to kick-start their tech career, land a job as software developers or product managers, or launch their own startup.

If you'd like to hear more about us, reach out Ana, Brussels city Driver at ana@lewagon.org

The next batches in Brussels start on April the 6th (9 weeks - Full time) OR March 21st (24 weeks - Part-Time). Further details about the course and our alumni careers can be founded at www.lewagon.com/brussels

We look forward to meeting you soon,

Le Wagon Brussels Team",
  location: "Becentral",
  banner: "https://i.imgur.com/W28v6KK.jpg",
  food: "None",
  drink: "Free",
  number_max_of_attendees: 200,
  stake: 5,
  start_time: DateTime.parse('2020-03-13T18:00:00'),
  end_time: DateTime.parse('2020-03-13T23:00:00')
  )

file = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F92961985%2F214604918889%2F1%2Foriginal.20200218-103312?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C40%2C1280%2C640&s=5d08d1e9655486e4f6c24e61be831c27')
e1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

e2 = Event.create!(
  user: o2,
  title: "Red Bull BC One Belgium Cypher",
  description: "An epic event for trolls",
  location: "Koninklijke Vlaamse Schouwburg,7 Arduinkaai,1000 Brussel",
  banner: "https://i.imgur.com/W28v6KK.jpg",
  food: "Paid",
  drink: "Free",
  number_max_of_attendees: 200,
  stake: 10,
  start_time: DateTime.parse('2020-03-17T12:00:00'),
  end_time: DateTime.parse('2020-03-17T20:00:00')
)
file2 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F89553591%2F153509925782%2F1%2Foriginal.20200127-120123?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2750%2C1375&s=904f2503ada3e60dfb589b22e6ddeedf')
e2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')


e3 = Event.create!(
  user: o2,
  title: "Crypto / blockchain training",
  description: "An epic event for epic people",
  location: "DigitYer",
  banner: "https://i.imgur.com/W28v6KK.jpg",
  food: "Paid",
  drink: "Free",
  number_max_of_attendees: 15,
  stake: 10,
  start_time: DateTime.parse('2020-03-23T18:00:00'),
  end_time: DateTime.parse('2020-03-23T21:30:00')
)
file3 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F95384691%2F266279915391%2F1%2Foriginal.20200304-190545?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C214%2C4760%2C2380&s=59f9c5947882c50df5b560883c3b89c9')
e3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

o1.reload
e4 = Event.create!(
  user_id: o1.id,
  title: "BXLBeerFest 2020",
  description: "An epic event for epic people",
  location: "Tour et Taxis",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F75943693%2F241405942936%2F1%2Foriginal.20191008-094517?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C1280%2C640&s=39b454a0b17882b8b41f3171e2ca0ead",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 80,
  stake: 15,
  start_time: DateTime.parse('2020-08-22T11:15:00'),
  end_time: DateTime.parse('2020-08-23T20:00:00')
)
file4 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F75943693%2F241405942936%2F1%2Foriginal.20191008-094517?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C1280%2C640&s=39b454a0b17882b8b41f3171e2ca0ead')
e4.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')

o1.reload
e5 = Event.create!(
  user_id: o1.id,
  title: "Muddy Angel Run - HOFSTADE 2020",
  description: "An epic event for epic people",
  location: "Tervuursesteenweg,1981 Zemst",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F62158556%2F265611780961%2F1%2Foriginal.20190513-101106?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C2000%2C1000&s=ffbe0738d559c661a0f452d290efcb82",
  food: "Free",
  drink: "Free",
  number_max_of_attendees: 2000,
  stake: 40,
  start_time: DateTime.parse('2020-05-16T10:30:00'),
  end_time: DateTime.parse('2020-05-16T21:30:00')
)
file5 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F62158556%2F265611780961%2F1%2Foriginal.20190513-101106?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C2000%2C1000&s=ffbe0738d559c661a0f452d290efcb82')
e5.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')

o1.reload
e6 = Event.create!(
  user_id: o1.id,
  title: "Rampage: Hip hop, Trap and Rnb",
  description: "Dj Dutam officie dans les nuits Hip hop et Rnb depuis plus de 25 ans, il vient s'emparer et faire trembler les murs du Café Floréo chaque second vendredi du mois.",
  location: "19 Rue des Riches Claires,1000 Bruxelles",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F62158556%2F265611780961%2F1%2Foriginal.20190513-101106?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C2000%2C1000&s=ffbe0738d559c661a0f452d290efcb82",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-04-16T21:30:00'),
  end_time: DateTime.parse('2020-04-16T23:30:00')
)
file6 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F71918231%2F194893512187%2F1%2Foriginal.20190907-114116?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C11%2C960%2C480&s=6f25c81f214d0daa4bb56e1f70eb8d92')
e6.photo.attach(io: file6, filename: 'nes.png', content_type: 'image/png')

o1.reload
e7 = Event.create!(
  user_id: o1.id,
  title: "Les rencontres de l'investissement",
  description: "An epic event for epic people",
  location: "Becentral",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F89585001%2F304037921150%2F1%2Foriginal.20191029-153226?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C800%2C400&s=85e379a2bc5ae3ccde7f7db8cc4fd446",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-03-18T10:15:00'),
  end_time: DateTime.parse('2020-03-18T20:30:00')
)
file7 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F89585001%2F304037921150%2F1%2Foriginal.20191029-153226?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C800%2C400&s=85e379a2bc5ae3ccde7f7db8cc4fd446')
e7.photo.attach(io: file7, filename: 'nes.png', content_type: 'image/png')

o1.reload
e8 = Event.create!(
  user_id: o1.id,
  title: "CoderDojo Kortenberg",
  description: "An epic event for epic people",
  location: "Bibliotheek Kortenberg",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F87868305%2F292655825325%2F1%2Foriginal.20200105-222107?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C79%2C1284%2C642&s=82d319348d5d26d71df2fa31bb368631",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-03-16T12:30:00'),
  end_time: DateTime.parse('2020-03-16T16:00:00')
)
file8 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F87868305%2F292655825325%2F1%2Foriginal.20200105-222107?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C79%2C1284%2C642&s=82d319348d5d26d71df2fa31bb368631')
e8.photo.attach(io: file8, filename: 'nes.png', content_type: 'image/png')

o1.reload
e9 = Event.create!(
  user_id: o1.id,
  title: "European Forest Policy Post-2020",
  description: "An epic event for epic people",
  location: "Residence Palace",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F88082473%2F226470159216%2F1%2Foriginal.20200117-061838?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=00e4c896b8f6a152cd940598a5e2154c",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-03-23T07:00:00'),
  end_time: DateTime.parse('2020-03-23T18:00:00')
)
file9 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F88082473%2F226470159216%2F1%2Foriginal.20200117-061838?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=00e4c896b8f6a152cd940598a5e2154c')
e9.photo.attach(io: file9, filename: 'nes.png', content_type: 'image/png')

o1.reload
e10 = Event.create!(
  user_id: o1.id,
  title: "Hospitality goes circular",
  description: "An epic event for epic people",
  location: "BIP - Place Royale",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91676173%2F224805194479%2F1%2Foriginal.20200210-083621?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C1668%2C834&s=60f6f0ad1d0c8cc306d2db28c47bad7b",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-03-19T18:00:00'),
  end_time: DateTime.parse('2020-03-19T22:00:00')
)
file10 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91676173%2F224805194479%2F1%2Foriginal.20200210-083621?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C1668%2C834&s=60f6f0ad1d0c8cc306d2db28c47bad7b')
e10.photo.attach(io: file10, filename: 'nes.png', content_type: 'image/png')

o1.reload
e11 = Event.create!(
  user_id: o1.id,
  title: "BPIE 10-year anniversary",
  description: "An epic event for epic people",
  location: "Leuvensesteenweg 24, 1210 Brussels",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F92994923%2F312420541600%2F1%2Foriginal.20200218-150417?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C241%2C1008%2C504&s=90e7ea1434696a0826b807d315870ef2",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-03-16T15:45:00'),
  end_time: DateTime.parse('2020-03-16T18:45:00')
)
file11 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F92994923%2F312420541600%2F1%2Foriginal.20200218-150417?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C241%2C1008%2C504&s=90e7ea1434696a0826b807d315870ef2')
e11.photo.attach(io: file11, filename: 'nes.png', content_type: 'image/png')

o1.reload
e12 = Event.create!(
  user_id: o1.id,
  title: "Brussels Science Promotion Meetup",
  description: "An epic event for epic people",
  location: "Museum of Natural Sciences",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91007217%2F251311205792%2F1%2Foriginal.20200205-111906?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C800%2C400&s=c7caf2ddac71aa35e36876ec8c8dc050",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-03-26T12:30:00'),
  end_time: DateTime.parse('2020-03-26T16:00:00')
)
file12 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91007217%2F251311205792%2F1%2Foriginal.20200205-111906?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C800%2C400&s=c7caf2ddac71aa35e36876ec8c8dc050')
e12.photo.attach(io: file12, filename: 'nes.png', content_type: 'image/png')

o1.reload
e13 = Event.create!(
  user_id: o1.id,
  title: "Fight Night - Anniversaire 3 ans ",
  description: "An epic event for epic people",
  location: "Marvelous Marvin Boxing Club",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F94437333%2F349799828757%2F1%2Foriginal.20200227-151202?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=b67f48d47b2a818127a7a90bbf9b9c61",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-03-19T18:00:00'),
  end_time: DateTime.parse('2020-03-19T22:30:00')
)
file13 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F94437333%2F349799828757%2F1%2Foriginal.20200227-151202?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=b67f48d47b2a818127a7a90bbf9b9c61')
e13.photo.attach(io: file13, filename: 'nes.png', content_type: 'image/png')

o2.reload
e14 = Event.create!(
  user_id: o2.id,
  title: "Patient safety and the implementation",
  description: "An epic event for epic people",
  location: "European Parliament",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F90193019%2F339669084503%2F1%2Foriginal.20200130-172006?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=a88b266db46919833f8a16889cf987a1",
  food: "None",
  drink: "Paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-02-16T07:00:00'),
  end_time: DateTime.parse('2020-02-16T17:30:00')
)
file14 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F90193019%2F339669084503%2F1%2Foriginal.20200130-172006?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=a88b266db46919833f8a16889cf987a1')
e14.photo.attach(io: file14, filename: 'nes.png', content_type: 'image/png')



puts "#{Event.all.count} events created"


# --------------------------------------------------------------------------------------------#

# Creates orders

order_1 = Order.create!(state: 'requires_capture', user_id: a1.id, event_id: e1.id, amount_cents: e1.stake*100)
order_2 = Order.create!(state: 'requires_capture', user_id: a2.id, event_id: e1.id, amount_cents: e1.stake*100)
order_3 = Order.create!(state: 'requires_capture', user_id: a3.id, event_id: e1.id, amount_cents: e1.stake*100)
order_4 = Order.create!(state: 'requires_capture', user_id: a4.id, event_id: e1.id, amount_cents: e1.stake*100)
order_5 = Order.create!(state: 'requires_capture', user_id: a1.id, event_id: e2.id, amount_cents: e2.stake*100)
order_6 = Order.create!(state: 'requires_capture', user_id: a2.id, event_id: e2.id, amount_cents: e2.stake*100)
order_7 = Order.create!(state: 'requires_capture', user_id: a3.id, event_id: e2.id, amount_cents: e2.stake*100)
order_8 = Order.create!(state: 'requires_capture', user_id: a2.id, event_id: e4.id, amount_cents: e4.stake*100)
order_9 = Order.create!(state: 'requires_capture', user_id: a4.id, event_id: e4.id, amount_cents: e4.stake*100)
order_10 = Order.create!(state: 'requires_capture', user_id: a1.id, event_id: e3.id, amount_cents: e3.stake*100)
order_11 = Order.create!(state: 'requires_capture', user_id: a2.id, event_id: e3.id, amount_cents: e3.stake*100)
order_12 = Order.create!(state: 'requires_capture', user_id: a3.id, event_id: e3.id, amount_cents: e3.stake*100)
order_13 = Order.create!(state: 'requires_capture', user_id: a4.id, event_id: e3.id, amount_cents: e3.stake*100)
order_14 = Order.create!(state: 'requires_capture', user_id: a5.id, event_id: e3.id, amount_cents: e3.stake*100)
order_15 = Order.create!(state: 'requires_capture', user_id: a6.id, event_id: e3.id, amount_cents: e3.stake*100)
order_16 = Order.create!(state: 'requires_capture', user_id: a7.id, event_id: e3.id, amount_cents: e3.stake*100)
order_17 = Order.create!(state: 'requires_capture', user_id: a8.id, event_id: e3.id, amount_cents: e3.stake*100)
order_18 = Order.create!(state: 'requires_capture', user_id: a9.id, event_id: e3.id, amount_cents: e3.stake*100)
order_19 = Order.create!(state: 'requires_capture', user_id: a10.id, event_id: e3.id, amount_cents: e3.stake*100)
order_20 = Order.create!(state: 'requires_capture', user_id: a11.id, event_id: e3.id, amount_cents: e3.stake*100)
order_21 = Order.create!(state: 'requires_capture', user_id: a12.id, event_id: e3.id, amount_cents: e3.stake*100)
order_22 = Order.create!(state: 'requires_capture', user_id: a13.id, event_id: e3.id, amount_cents: e3.stake*100)
order_23 = Order.create!(state: 'requires_capture', user_id: a14.id, event_id: e3.id, amount_cents: e3.stake*100)
order_24 = Order.create!(state: 'requires_capture', user_id: a15.id, event_id: e3.id, amount_cents: e3.stake*100)
order_25 = Order.create!(state: 'requires_capture', user_id: a16.id, event_id: e3.id, amount_cents: e3.stake*100)
order_26 = Order.create!(state: 'requires_capture', user_id: a17.id, event_id: e3.id, amount_cents: e3.stake*100)
order_27 = Order.create!(state: 'requires_capture', user_id: a18.id, event_id: e3.id, amount_cents: e3.stake*100)
order_28 = Order.create!(state: 'requires_capture', user_id: a19.id, event_id: e3.id, amount_cents: e3.stake*100)
order_29 = Order.create!(state: 'requires_capture', user_id: a20.id, event_id: e3.id, amount_cents: e3.stake*100)
order_30 = Order.create!(state: 'requires_capture', user_id: a21.id, event_id: e3.id, amount_cents: e3.stake*100)


puts "#{Order.all.count} orders created"



Order.all.each do |order|
  url = Rails.application.routes.url_helpers.order_url(order, host: Rails.application.config.action_mailer.default_url_options[:host])
  pi = Stripe::PaymentIntent.create({ amount: order.amount_cents, currency: 'eur', payment_method_types: ['card'], capture_method: 'manual'})
  order.update(payment_intent_id: pi.id)
  pm = Stripe::PaymentMethod.create({type: 'card', card: { number: '4242424242424242', exp_month: 3, exp_year: 2021, cvc: '314' }})
  Stripe::PaymentIntent.confirm(pi.id, { payment_method: pm })
end



# Creates reservations

t1 = Ticket.create!(status: "Attending", attending_event: e1, user: a1, order_id: order_1.id)
t2 = Ticket.create!(status: "Attending", attending_event: e1, user: a2, order_id: order_2.id)
t3 = Ticket.create!(status: "Attending", attending_event: e1, user: a3, order_id: order_3.id)
t4 = Ticket.create!(status: "Attending", attending_event: e1, user: a4, order_id: order_4.id)
t5 = Ticket.create!(status: "Attending", attending_event: e2, user: a1, order_id: order_5.id)
t6 = Ticket.create!(status: "Attending", attending_event: e2, user: a2, order_id: order_6.id)
t7 = Ticket.create!(status: "Attending", attending_event: e2, user: a3, order_id: order_7.id)
t8 = Ticket.create!(status: "Attending", attending_event: e4, user: a2, order_id: order_8.id)
t9 = Ticket.create!(status: "Attending", attending_event: e4, user: a4, order_id: order_9.id)
t10 = Ticket.create!(status: "Attending", attending_event: e3, user: a1, order_id: order_10.id)
t11 = Ticket.create!(status: "Attending", attending_event: e3, user: a2, order_id: order_11.id)
t12 = Ticket.create!(status: "Attending", attending_event: e3, user: a3, order_id: order_12.id)
t13 = Ticket.create!(status: "Attending", attending_event: e3, user: a4, order_id: order_13.id)
t14 = Ticket.create!(status: "Attending", attending_event: e3, user: a5, order_id: order_14.id)
t15 = Ticket.create!(status: "Attending", attending_event: e3, user: a6, order_id: order_15.id)
t16 = Ticket.create!(status: "Attending", attending_event: e3, user: a7, order_id: order_16.id)
t17 = Ticket.create!(status: "Attending", attending_event: e3, user: a8, order_id: order_17.id)
t18 = Ticket.create!(status: "Attending", attending_event: e3, user: a9, order_id: order_18.id)
t19 = Ticket.create!(status: "Attending", attending_event: e3, user: a10, order_id: order_19.id)
t20 = Ticket.create!(status: "Attending", attending_event: e3, user: a11, order_id: order_20.id)
t21 = Ticket.create!(status: "Attending", attending_event: e3, user: a12, order_id: order_21.id)
t22 = Ticket.create!(status: "Attending", attending_event: e3, user: a13, order_id: order_22.id)
t23 = Ticket.create!(status: "Attending", attending_event: e3, user: a14, order_id: order_23.id)
t24 = Ticket.create!(status: "Attending", attending_event: e3, user: a15, order_id: order_24.id)
t25 = Ticket.create!(status: "Attending", attending_event: e3, user: a16, order_id: order_25.id)
t26 = Ticket.create!(status: "Attending", attending_event: e3, user: a17, order_id: order_26.id)
t27 = Ticket.create!(status: "Attending", attending_event: e3, user: a18, order_id: order_27.id)
t28 = Ticket.create!(status: "Attending", attending_event: e3, user: a19, order_id: order_28.id)
t29 = Ticket.create!(status: "Attending", attending_event: e3, user: a20, order_id: order_29.id)
t30 = Ticket.create!(status: "Attending", attending_event: e3, user: a21, order_id: order_30.id)

puts "#{Ticket.all.count} tickets created"

