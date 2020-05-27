# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Position.create(
  name: "Point Guard"
)

Position.create(
  name: "Shooting Guard"
)

Position.create(
  name: "Small Forward"
)
Position.create(
  name: "Forward"
)

Position.create(
  name: "Post"
)

Funnel.create(
  name: "Not Contacted"
)

Funnel.create(
  name: "Initial Outreach"
)

Funnel.create(
  name: "Campus Visit"
)

Funnel.create(
  name: "Applied"
)

Funnel.create(
  name: "Deposit Received"
)

Funnel.create(
  name: "Commited"
)

Year.create(
  year: 2019,
  status: 'inactive'
)

 Year.create(
   year: 2020,
   status: 'active'
 )

 Year.create(
   year: 2021,
   status: 'active'
 )

 Year.create(
   year: 2022,
   status: 'active'
 )

 Level.create(
   name: "Varsity"
 )

 Level.create(
   name: "J.V."
 )

 Level.create(
   name: "Tweener"
 )

Status.create(
  status: 'Recruit'
)

Status.create(
  status: 'Applicant'
)

Status.create(
  status: 'Rejected'
)

Status.create(
  status: 'Not Selected'
)

10.times do
  School.create(
    name: Faker::University.name,
    coach: Faker::TvShows::StrangerThings.character,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip: Faker::Address.zip,
    phone: '555-555-5555'
  )
end

user1 = User.new
user1.name = 'Jamie Cajka'
user1.email = 'jamiecajka@gmail.com'
user1.password = 'password'
user1.password_confirmation = 'password'
user1.status = 'active'
user1.key = 'LC6y-;{$J:Gp<E*v'
user1.superadmin_role = true
user1.save!

user2 = User.new
user2.name = Faker::Superhero.name
user2.email = Faker::Internet.safe_email
user2.password = 'password'
user2.password_confirmation = 'password'
user2.status = 'active'
user2.key = 'LC6y-;{$J:Gp<E*v'
user1.superadmin_role = true
user2.save!

user3 = User.new
user3.name = Faker::Superhero.name
user3.email = Faker::Internet.safe_email
user3.password = 'password'
user3.password_confirmation = 'password'
user3.status = 'active'
user3.key = 'LC6y-;{$J:Gp<E*v'
user3.save!

user4 = User.new
user4.name = Faker::Superhero.name
user4.email = Faker::Internet.safe_email
user4.password = 'password'
user4.password_confirmation = 'password'
user4.status = 'inactive'
user4.save!

30.times do
  Recruit.create(
    name: Faker::TvShows::GameOfThrones.character,
    gpa: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    act: rand(20..36),
    height: Faker::Demographic.height,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    city: Faker::TvShows::GameOfThrones.city,
    state: Faker::Address.state_abbr,
    zip: Faker::Address.zip,
    basketball: Faker::Number.between(from: 0, to: 5000),
    academic: Faker::Number.between(from: 0, to: 5000),
    ppg: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    o_rebound: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    d_rebound: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    two: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    three: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    free_throw: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    assists: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    steals: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    turn_overs: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    blocks: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    minutes: Faker::Number.between(from: 1, to: 40),
    school_id: rand(1..10),
    level_id: rand(1..3),
    position_id: rand(1..5),
    year_id: rand(2..4),
    funnel_id: rand(1..6),
    status_id: 1
  )
end

10.times do
  Recruit.create(
    name: Faker::TvShows::GameOfThrones.character,
    gpa: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    act: rand(20..36),
    height: Faker::Demographic.height,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    city: Faker::TvShows::GameOfThrones.city,
    state: Faker::Address.state_abbr,
    zip: Faker::Address.zip,
    basketball: 0,
    academic: 0,
    ppg: 0,
    o_rebound: 0,
    d_rebound: 0,
    two: 0,
    three: 0,
    free_throw: 0,
    assists: 0,
    steals: 0,
    turn_overs: 0,
    blocks: 0,
    minutes: 0,
    school_id: rand(1..10),
    level_id: 1,
    position_id: rand(1..5),
    year_id: rand(2..4),
    funnel_id: 1,
    status_id: 2
  )
end

10.times do
  Recruit.create(
    name: Faker::TvShows::GameOfThrones.character,
    gpa: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    act: rand(20..36),
    height: Faker::Demographic.height,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    city: Faker::TvShows::GameOfThrones.city,
    state: Faker::Address.state_abbr,
    zip: Faker::Address.zip,
    basketball: 0,
    academic: 0,
    ppg: 0,
    o_rebound: 0,
    d_rebound: 0,
    two: 0,
    three: 0,
    free_throw: 0,
    assists: 0,
    steals: 0,
    turn_overs: 0,
    blocks: 0,
    minutes: 0,
    school_id: rand(1..10),
    level_id: 1,
    position_id: rand(1..5),
    year_id: rand(1..4),
    funnel_id: 1,
    status_id: 3
  )
end

10.times do
  Recruit.create(
    name: Faker::TvShows::GameOfThrones.character,
    gpa: Faker::Number.decimal(l_digits: 1, r_digits: 3),
    act: rand(20..36),
    height: Faker::Demographic.height,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    city: Faker::TvShows::GameOfThrones.city,
    state: Faker::Address.state_abbr,
    zip: Faker::Address.zip,
    basketball: 0,
    academic: 0,
    ppg: 0,
    o_rebound: 0,
    d_rebound: 0,
    two: 0,
    three: 0,
    free_throw: 0,
    assists: 0,
    steals: 0,
    turn_overs: 0,
    blocks: 0,
    minutes: 0,
    school_id: rand(1..10),
    level_id: rand(1..3),
    position_id: rand(1..5),
    year_id: 1,
    funnel_id: rand(1..6),
    status_id: 4
  )
end

40.times do
  Mnote.create(
     text: Faker::GreekPhilosophers.quote,
     recruit_id: rand(1..30)
  )
end

60.times do
  Cnote.create(
    text: Faker::Hipster.paragraph,
    recruit_id: rand(1..30),
    user_id: rand(1..3),
    date: Faker::Date.between(from: 2.years.ago, to: Date.today)
  )
end
