# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(username: "siobhan")

10.times do
  n = Note.all.find_or_create_by(title: Faker::Hacker.ingverb + " " + Faker::Hacker.noun)
  n.update(content: Faker::Hacker.say_something_smart, user_id: u.id)
end
