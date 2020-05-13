# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# Position.create(
#   name: "Point Guard"
# )
#
# Position.create(
#   name: "Shooting Guard"
# )
#
# Position.create(
#   name: "Small Forward"
# )
# Position.create(
#   name: "Forward"
# )
#
# Position.create(
#   name: "Post"
# )
#
# Funnel.create(
#   name: "Not Contacted"
# )
#
# Funnel.create(
#   name: "Initial Outreach"
# )
#
# Funnel.create(
#   name: "Campus Visit"
# )
#
# Funnel.create(
#   name: "Applied"
# )
#
# Funnel.create(
#   name: "Deposit Received"
# )
#
# Funnel.create(
#   name: "Commited"
# )
#
# Year.create(
#   year: 2019,
#   active: false
# )
#
#  Year.create(
#    year: 2020,
#    active: true
#  )
#
#  Year.create(
#    year: 2021,
#    active: true
#  )
#
#  Year.create(
#    year: 2022,
#    active: true
#  )
#
#  Level.create(
#    name: "Varsity"
#  )
#
#  Level.create(
#    name: "J.V."
#  )
#
#  Level.create(
#    name: "Tweener"
#  )
#
# 10.times do
#   School.create(
#     name: Faker::University.name,
#     coach: Faker::TvShows::StrangerThings.character,
#     address: Faker::Address.street_address,
#     city: Faker::Address.city,
#     state: Faker::Address.state_abbr,
#     zip: Faker::Address.zip,
#     phone: '555-555-5555'
#   )
# end
#
# 3.times do
#   User.create(
#       name: Faker::Superhero.name,
#       active: true
#   )
# end
#
# 2.times do
#   User.create(
#     name: Faker::Superhero.name,
#     email: "",
#     encrypted_password: 'password',
#     active: true
#   )
# end
#
# 30.times do
#   Recruit.create(
#     name: Faker::TvShows::GameOfThrones.character,
#     gpa: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     act: rand(20..36),
#     height: Faker::Demographic.height,
#     phone: Faker::PhoneNumber.cell_phone,
#     email: Faker::Internet.email,
#     address: Faker::Address.street_address,
#     city: Faker::TvShows::GameOfThrones.city,
#     state: Faker::Address.state_abbr,
#     zip: Faker::Address.zip,
#     basketball: Faker::Number.between(from: 0, to: 5000),
#     academic: Faker::Number.between(from: 0, to: 5000),
#     ppg: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     o_rebound: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     d_rebound: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     two: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     three: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     free_throw: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     assists: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     steals: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     turn_overs: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     blocks: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     minutes: Faker::Number.between(from: 1, to: 40),
#     school_id: rand(1..10),
#     level_id: rand(1..3),
#     position_id: rand(1..5),
#     year_id: rand(1..4),
#     funnel_id: rand(1..6)
#   )
# end
#
# 40.times do
#   Mnote.create(
#      text: Faker::GreekPhilosophers.quote,
#      recruit_id: rand(1..30)
#   )
# end
#
# 60.times do
#   Cnote.create(
#     text: Faker::Hipster.paragraph,
#     recruit_id: rand(1..30),
#     user_id: rand(1..3)
#   )
# end
#
# 10.times do
#   Applicant.create(
#     name: Faker::TvShows::GameOfThrones.character,
#     gpa: Faker::Number.decimal(l_digits: 1, r_digits: 3),
#     height: Faker::Demographic.height,
#     phone: Faker::PhoneNumber.cell_phone,
#     email: Faker::Internet.email,
#     address: Faker::Address.street_address,
#     city: Faker::TvShows::GameOfThrones.city,
#     state: Faker::Address.state_abbr,
#     zip: Faker::Address.zip,
#     school_id: rand(1..10),
#     position_id: rand(1..5),
#     year_id: rand(1..4)
#   )
# end
#
# User.create(
#   name: 'Jamie',
#   email: 'jamiecajka@gmail.com',
#   encrypted_password: 'password',
#   active: true
# )
