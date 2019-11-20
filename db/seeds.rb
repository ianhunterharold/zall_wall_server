# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # seed data not feeding into db
u1 = User.create(username: 'ianhunterharold',password:'abc',bio: 'west phile born and raised',picture: 'https://imgur.com/a/ylur3oT')

u2 = User.create(username: 'peterpaul',password: 'abc',bio: 'born and raised in denver colorado',picture: 'https://imgur.com/a/ylur3oT') 