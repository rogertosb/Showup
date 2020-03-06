# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Purges all data before seeding

Event.destroy_all
User.destroy_all
Ticket.destroy_all

# --------------------------------------------------------------------------------------------#

# Creates 2 users with organizer type


o1 = User.create(
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

o2 = User.create(
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

# --------------------------------------------------------------------------------------------#

# Creates 4 users with attendee type

a1 = User.create(
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

a2 = User.create(
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

a3 = User.create(
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


a4 = User.create(
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

# --------------------------------------------------------------------------------------------#

# Creates events

e1 = Event.create(
  user: o1,
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

This event is free, but registration is mandatory!

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
  location: "LE WAGON ( BE CENTRAL 2nd floor )",
  banner: "https://i.imgur.com/W28v6KK.jpg",
  food: "none",
  drink: "free",
  number_max_of_attendees: 200,
  stake: 5,
  start_time: DateTime.parse('2020-03-13T07:18:00'),
  end_time: DateTime.parse('2020-03-13T07:22:00')
  )

file = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F92961985%2F214604918889%2F1%2Foriginal.20200218-103312?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C40%2C1280%2C640&s=5d08d1e9655486e4f6c24e61be831c27')
e1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

e2 = Event.create(
  user: o2,
  title: "Red Bull BC One Belgium Cypher",
  description: "An epic event for trolls",
  location: "Becentral",
  banner: "https://i.imgur.com/W28v6KK.jpg",
  food: "paid",
  drink: "free",
  number_max_of_attendees: 200,
  stake: 10,
  start_time: DateTime.parse('2020-03-17T07:12:00'),
  end_time: DateTime.parse('2020-03-17T07:20:00')
)
file2 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F89553591%2F153509925782%2F1%2Foriginal.20200127-120123?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2750%2C1375&s=904f2503ada3e60dfb589b22e6ddeedf')
e2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')


e3 = Event.create(
  user: o2,
  title: "Crypto / blockchain training",
  description: "An epic event for epic people",
  location: "DigitYser • Bruxelles",
  banner: "https://i.imgur.com/W28v6KK.jpg",
  food: "paid",
  drink: "free",
  number_max_of_attendees: 10,
  stake: 5,
  start_time: DateTime.parse('2020-03-23T07:18:00'),
  end_time: DateTime.parse('2020-03-23T07:21:00')
)
file3 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F95384691%2F266279915391%2F1%2Foriginal.20200304-190545?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C214%2C4760%2C2380&s=59f9c5947882c50df5b560883c3b89c9')
e3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

e4 = Event.create(
  user: o1,
  title: "BXLBeerFest 2020",
  description: "An epic event for epic people",
  location: "Tour & Taxis, Bruxelles",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F75943693%2F241405942936%2F1%2Foriginal.20191008-094517?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C1280%2C640&s=39b454a0b17882b8b41f3171e2ca0ead",
  food: "none",
  drink: "paid",
  number_max_of_attendees: 80,
  stake: 3,
  start_time: DateTime.parse('2020-08-22T07:12:00'),
  end_time: DateTime.parse('2020-08-23T07:20:00')
)
file4 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F75943693%2F241405942936%2F1%2Foriginal.20191008-094517?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C1280%2C640&s=39b454a0b17882b8b41f3171e2ca0ead')
e4.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')

e5 = Event.create(
  user: o1,
  title: "Muddy Angel Run - HOFSTADE 2020",
  description: "An epic event for epic people",
  location: "Sport Vlaanderen Hofstade",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F62158556%2F265611780961%2F1%2Foriginal.20190513-101106?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C2000%2C1000&s=ffbe0738d559c661a0f452d290efcb82",
  food: "free",
  drink: "free",
  number_max_of_attendees: 2000,
  stake: 40,
  start_time: DateTime.parse('2020-05-16T07:10:30'),
  end_time: DateTime.parse('2020-05-16T07:21:30')
)
file5 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F62158556%2F265611780961%2F1%2Foriginal.20190513-101106?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C2000%2C1000&s=ffbe0738d559c661a0f452d290efcb82')
e5.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')

e6 = Event.create(
  user: o1,
  title: "Rampage: Hip hop, Trap and Rnb",
  description: "Dj Dutam officie dans les nuits Hip hop et Rnb depuis plus de 25 ans, il vient s'emparer et faire trembler les murs du Café Floréo chaque second vendredi du mois.",
  location: "Café Floréo",
  banner: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F62158556%2F265611780961%2F1%2Foriginal.20190513-101106?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C51%2C2000%2C1000&s=ffbe0738d559c661a0f452d290efcb82",
  food: "none",
  drink: "paid",
  number_max_of_attendees: 400,
  stake: 10,
  start_time: DateTime.parse('2020-04-16T07:21:30'),
  end_time: DateTime.parse('2020-04-16T07:23:30')
)
file5 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F71918231%2F194893512187%2F1%2Foriginal.20190907-114116?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C11%2C960%2C480&s=6f25c81f214d0daa4bb56e1f70eb8d92')
e6.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')


# --------------------------------------------------------------------------------------------#

# Creates reservations


t1 = Ticket.create(status: "Attendee", attending_event: e1, user: a1)
t2 = Ticket.create(status: "Attendee", attending_event: e1, user: a2)
t3 = Ticket.create(status: "Attendee", attending_event: e1, user: a3)
t4 = Ticket.create(status: "Attendee", attending_event: e1, user: a4)
t5 = Ticket.create(status: "Attendee", attending_event: e2, user: a1)
t6 = Ticket.create(status: "Attendee", attending_event: e2, user: a2)
t7 = Ticket.create(status: "Attendee", attending_event: e2, user: a3)
t8 = Ticket.create(status: "Attendee", attending_event: e3, user: a3)
t9 = Ticket.create(status: "Attendee", attending_event: e4, user: a2)
t10 = Ticket.create(status: "Attendee", attending_event: e4, user: a4)


