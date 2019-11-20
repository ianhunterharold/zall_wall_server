# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # seed data not feeding into db
u1 = User.create(username: 'ianhunterharold',password:'abc',bio: 'west phile born and raised', picture: 'https://imgur.com/a/ylur3oT')
u2 = User.create(username: 'peterpaul',password: 'abc',bio: 'born and raised in denver colorado', picture: 'https://imgur.com/a/ylur3oT') 

g1 = Group.create(name: 'Puppies', group_image: 'https://imgur.com/r/puppies/zQTBqNq', user_id: 1)
g2 = Group.create(name: 'Cats', group_image: 'https://imgur.com/r/cats/QQPuCvi', user_id: 2)
g3 = Group.create(name: 'Yoga', group_image: 'https://imgur.com/gallery/nLA1r', user_id: 1)

k1 = Karma.create(content: 'Thank you for always listening!', user_id: 1)
k2 = Karma.create(content: 'You have been so helpful, thank you!',user_id: 2)
k3 = Karma.create(content: 'Keep up the great work!',user_id: 2)