# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tamagochi Model
# name: string
# owner: string
# age: integer
# love: integer
# strength: integer
tams = [
  {
    name: "Johann",
    owner: "Adam ",
    age: 8,
    love: 20,
    strength: 10
  },
  {
    name: "Meryl",
    owner: "Adam ",
    age: 8,
    love: 30,
    strength: 40
  },
  {
    name: "Steven",
    owner: "Adam ",
    age: 8,
    love: 20,
    strength: 15
  },
  {
    name: "Prince",
    owner: "Adam ",
    age: 8,
    love: 8,
    strength: 8
  }
]

byebug
tams.each do |tam|
  Tamagotchi.create(tams)
end
