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
file_o1 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F93537107%2F292823511972%2F1%2Foriginal.20200221-110628?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=84%2C0%2C1162%2C581&s=b309f493bec30f47d019f7c02ad64cae')
o1.avatar.attach(io: file_o1, filename: 'nes.png', content_type: 'image/png')

o2 = User.create(first_name: nil, last_name: nil, organizer_name: "HIVE Blockchain Society", user_type: "organizer", email: "hive@test.com", password: "hellohello", password_confirmation: "hellohello")
file_o2 = URI.open('https://images.unsplash.com/photo-1524117074681-31bd4de22ad3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
o2.avatar.attach(io: file_o2, filename: 'nes.png', content_type: 'image/png')

# Creates 4 users with attendee type

a1 = User.create(first_name: "Max", last_name: "Hendrickx", organizer_name: nil, user_type: "attendee", email: "max@test.com", password: "hellohello", password_confirmation: "hellohello")
file_a1 = URI.open('https://images.unsplash.com/photo-1524117074681-31bd4de22ad3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
a1.avatar.attach(io: file_a1, filename: 'nes.png', content_type: 'image/png')

a2 = User.create(first_name: "Xav", last_name: "Auffray", organizer_name: nil, user_type: "attendee", email: "xav@test.com", password: "hellohello", password_confirmation: "hellohello")
file_a2 = URI.open('https://images.unsplash.com/photo-1524117074681-31bd4de22ad3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
a2.avatar.attach(io: file_a2, filename: 'nes.png', content_type: 'image/png')

a3 = User.create(first_name: "Gee", last_name: "Veldekens", organizer_name: nil, user_type: "attendee", email: "roger@test.com", password: "hellohello", password_confirmation: "hellohello")
file_a3 = URI.open('https://images.unsplash.com/photo-1524117074681-31bd4de22ad3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
a3.avatar.attach(io: file_a3, filename: 'nes.png', content_type: 'image/png')


a4 = User.create(first_name: "Rog", last_name: "Tosbotn", organizer_name: nil, user_type: "attendee", email: "gee@test.com", password: "hellohello", password_confirmation: "hellohello")
file_a4 = URI.open('https://images.unsplash.com/photo-1524117074681-31bd4de22ad3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
a4.avatar.attach(io: file_a4, filename: 'nes.png', content_type: 'image/png')


# Creates events

e1 = Event.create(
  user: o1,
  title: "Le Wagon Apero",
  description: "An epic event for epic people",
  location: "Becentral",
  banner: "https://i.imgur.com/W28v6KK.jpg",
  food: "none",
  drink: "free",
  number_max_of_attendees: 30,
  stake: 5,
  start_time: DateTime.parse('2020-03-1T07:14:00'),
  end_time: DateTime.parse('2020-03-1T07:17:00')
  )

file = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F93537107%2F292823511972%2F1%2Foriginal.20200221-110628?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=84%2C0%2C1162%2C581&s=b309f493bec30f47d019f7c02ad64cae')
e1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

e2 = Event.create(user: o2, title: "Trollfest", description: "An epic event for trolls", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "free", drink: "free", number_max_of_attendees: 200, stake: 9, start_time: DateTime.parse('2020-03-17T07:12:00'), end_time: DateTime.parse('2020-03-17T07:20:00'))
file2 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91908731%2F254596614789%2F1%2Foriginal.20200211-092347?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C32%2C2496%2C1248&s=d41021c18fccd04f1cd688e5469c47e8')
e2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')


e3 = Event.create(user: o2, title: "Crypto Meeting", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "paid", drink: "free", number_max_of_attendees: 10, stake: 5, start_time: DateTime.parse('2020-03-23T07:18:00'), end_time: DateTime.parse('2020-03-23T07:21:00'))
file3 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91908731%2F254596614789%2F1%2Foriginal.20200211-092347?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C32%2C2496%2C1248&s=d41021c18fccd04f1cd688e5469c47e8')
e3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

e4 = Event.create(user: o1, title: "Rugby drink", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "none", drink: "free", number_max_of_attendees: 80, stake: 3, start_time: DateTime.parse('2020-03-14T07:20:00'), end_time: DateTime.parse('2020-03-14T07:23:00'))
file4 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91908731%2F254596614789%2F1%2Foriginal.20200211-092347?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C32%2C2496%2C1248&s=d41021c18fccd04f1cd688e5469c47e8')
e4.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')

e5 = Event.create(user: o1, title: "Pootsy cleaner get together", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "none", drink: "free", number_max_of_attendees: 5, stake: 15, start_time: DateTime.parse('2020-04-03T07:18:30'), end_time: DateTime.parse('2020-04-03T07:21:30'))
file5 = URI.open('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91908731%2F254596614789%2F1%2Foriginal.20200211-092347?w=1080&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C32%2C2496%2C1248&s=d41021c18fccd04f1cd688e5469c47e8')
e5.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')

# Creates reservations


t1 = Ticket.new(status: "Attendee", attending_event: e1, user: a1)
t2 = Ticket.new(status: "Attendee", attending_event: e1, user: a2)
t3 = Ticket.new(status: "Attendee", attending_event: e3, user: a3)
t4 = Ticket.new(status: "Attendee", attending_event: e4, user: a4)
t5 = Ticket.new(status: "Attendee", attending_event: e2, user: a4)
t6 = Ticket.new(status: "Attendee", attending_event: e5, user: a4)
t7 = Ticket.new(status: "Attendee", attending_event: e1, user: a3)
t8 = Ticket.new(status: "Attendee", attending_event: e2, user: a1)
