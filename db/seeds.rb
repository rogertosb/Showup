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


o1 = User.create(first_name: nil, last_name: nil, organizer_name: "Le Wagon", user_type: "organizer", email: "lewagon@test.com", password: "hellohello", password_confirmation: "hellohello", avatar: "https://i.imgur.com/W8HM214.jpg")
o2 = User.create(first_name: nil, last_name: nil, organizer_name: "HIVE Blockchain Society", user_type: "organizer", email: "hive@test.com", password: "hellohello", password_confirmation: "hellohello", avatar: "https://i.imgur.com/HN3Gmln.jpg")

# Creates 4 users with attendee type

a1 = User.create(first_name: "Max", last_name: "Hendrickx", organizer_name: nil, user_type: "attendee", email: "max@test.com", password: "hellohello", password_confirmation: "hellohello", avatar: "https://i.imgur.com/JZaCLJf.jpg")
a2 = User.create(first_name: "Xav", last_name: "Auffray", organizer_name: nil, user_type: "attendee", email: "xav@test.com", password: "hellohello", password_confirmation: "hellohello", avatar: "https://i.imgur.com/jyFGS0K.jpg")
a3 = User.create(first_name: "Gee", last_name: "Veldekens", organizer_name: nil, user_type: "attendee", email: "roger@test.com", password: "hellohello", password_confirmation: "hellohello", avatar: "https://i.imgur.com/7mF90bl.jpg")
a4 = User.create(first_name: "Rog", last_name: "Tosbotn", organizer_name: nil, user_type: "attendee", email: "gee@test.com", password: "hellohello", password_confirmation: "hellohello", avatar: "https://i.imgur.com/zlB6NdR.jpg")


# Creates events

e1 = Event.create(user: o1, title: "Le Wagon Apero", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "none", drink: "free", number_max_of_attendees: 30, stake: 5, start_time: DateTime.parse('2020-03-1T07:14:00'), end_time: DateTime.parse('2020-03-1T07:17:00'))
e2 = Event.create(user: o2, title: "Trollfest", description: "An epic event for trolls", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "free", drink: "free", number_max_of_attendees: 200, stake: 9, start_time: DateTime.parse('2020-03-17T07:12:00'), end_time: DateTime.parse('2020-03-17T07:20:00'))
e3 = Event.create(user: o2, title: "Crypto Meeting", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "paid", drink: "free", number_max_of_attendees: 10, stake: 5, start_time: DateTime.parse('2020-03-23T07:18:00'), end_time: DateTime.parse('2020-03-23T07:21:00'))
e4 = Event.create(user: o1, title: "Rugby drink", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "none", drink: "free", number_max_of_attendees: 80, stake: 3, start_time: DateTime.parse('2020-03-14T07:20:00'), end_time: DateTime.parse('2020-03-14T07:23:00'))
e5 = Event.create(user: o1, title: "Pootsy cleaner get together", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", food: "none", drink: "free", number_max_of_attendees: 5, stake: 15, start_time: DateTime.parse('2020-04-03T07:18:30'), end_time: DateTime.parse('2020-04-03T07:21:30'))

# Creates reservations


t1 = Ticket.new(status: "purchased", attending_event: e1, user: a1)
t2 = Ticket.new(status: "purchased", attending_event: e1, user: a2)
t3 = Ticket.new(status: "purchased", attending_event: e3, user: a3)
t4 = Ticket.new(status: "purchased", attending_event: e4, user: a4)
t5 = Ticket.new(status: "purchased", attending_event: e2, user: a4)
t6 = Ticket.new(status: "purchased", attending_event: e5, user: a4)
t7 = Ticket.new(status: "purchased", attending_event: e1, user: a3)
t8 = Ticket.new(status: "purchased", attending_event: e2, user: a1)
