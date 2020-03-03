# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Purges all data before seeding

User.destroy_all
Event.destroy_all
Ticket.destroy_all

# --------------------------------------------------------------------------------------------#

# Creates 2 users with organizer type



  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.string "organizer_name"
    t.string "type"
    t.datetime "created_at", nunamell: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

o1 = User.create(name: "Amstrong", email: "driver1@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/W8HM214.jpg")
o2 = User.create(name: "Frimout", email: "driver2@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/HN3Gmln.jpg")

# Creates 4 users with attendee type

a1 = User.create(name: "Max", email: "max@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/JZaCLJf.jpg")
a2 = User.create(name: "Xav", email: "xav@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/jyFGS0K.jpg")
a3 = User.create(name: "Roger", email: "roger@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/7mF90bl.jpg")
a4 = User.create(name: "Gee", email: "gee@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/zlB6NdR.jpg")


# Creates events



  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "location"
    t.string "banner"
    t.string "food"
    t.string "drink"
    t.integer "number_max_of_attendees"
    t.integer "stake"
    t.date "start_time"
    t.date "end_time"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"

e1 = Event.create(title: "Le Wagon Apero", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", "food": "none", available_seats: 30, spaceship_name: "Moon Express", date: DateTime.parse('2020-03-14T07:00:00'))
e2 = Event.create(title: "Trollfest", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", "food": "free", available_seats: 200, spaceship_name: "New World", date: DateTime.parse('2020-03-14T07:00:00'))
e3 = Event.create(title: "Crypto Meeting", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", "food": "paid", available_seats: 10, spaceship_name: "Space Explorer", date: DateTime.parse('2020-03-14T07:00:00'))
e4 = Event.create(title: "Rugby drink", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", "food": "none", available_seats: 80, spaceship_name: "Rucket", date: DateTime.parse('2020-03-14T07:00:00'))
e5 = Event.create(title: "Pootsy cleaner get together", description: "An epic event for epic people", location: "Becentral", banner: "https://i.imgur.com/W28v6KK.jpg", "food": "none", available_seats: 5, spaceship_name: "Lightspeed", date: DateTime.parse('2020-03-14T07:00:00'))

# Creates reservations

  create_table "tickets", force: :cascade do |t|
    t.string "status"
    t.bigint "event_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_tickets_on_event_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"

Ticket.create(amount_of_passengers: 4, journey: j1, passenger: max)
Ticket.create(amount_of_passengers: 40, journey: j2, passenger: max)
Ticket.create(amount_of_passengers: 60, journey: j2, passenger: xav)
Ticket.create(amount_of_passengers: 20, journey: j2, passenger: roger)
Ticket.create(amount_of_passengers: 80, journey: j2, passenger: gee)
Ticket.create(amount_of_passengers: 3, journey: j3, passenger: roger)
Ticket.create(amount_of_passengers: 1, journey: j3, passenger: roger)
Ticket.create(amount_of_passengers: 2, journey: j3, passenger: gee)
Ticket.create(amount_of_passengers: 1, journey: j3, passenger: max)
Ticket.create(amount_of_passengers: 1, journey: j3, passenger: xav)
Ticket.create(amount_of_passengers: 1, journey: j3, passenger: xav)
Ticket.create(amount_of_passengers: 10, journey: j4, passenger: roger)
Ticket.create(amount_of_passengers: 2, journey: j4, passenger: max)
