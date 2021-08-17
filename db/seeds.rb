# This file should contain all the record cre(ation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  user_1 = User.create!(
  email: "adam.tomczyk@rentabrain.com",
  fullname: "Adam Tomczyk",
  password: "adam123"
)

  Brain.create!(
  name: "Johann",
  description: "This elementary school level brain makes you enjoy life again.",
  iq: 68,
  eq: 30,
  price_per_minute: 1300,
  rating: 3,
  user_id: user_1.id
)
