# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # seed data not feeding into db
u1 = User.create(username: 'ianhunterharold',password:'abc',bio: 'Ian Harold Richardson is a 27-year-old lawyer who enjoys reading, glamping and cycling. He is friendly and bright, but can also be very greedy and a bit sneaky.
  He is a British Hindu who defines himself as bisexual. He has a degree in law. He is allergic to latex.
  Physically, Ian is slightly overweight but otherwise in good shape. He is average-height with walnut skin, black hair and black eyes.He grew up in a middle class neighbourhood. He was raised by his mother, his father having left when he was young.
  He is currently in a relationship with Hector Robert Noble. Hector is 19 years older than him and works as a lawyer.
  Ians best friend is a lawyer called Warner Brooks. They have a very firey friendship. He also hangs around with Stacy Flynn and Marvyn Page. They enjoy football together.', picture: 'https://i.imgur.com/uEJZwGd.jpg')

u2 = User.create(username: 'peterpaul',password: 'abc',bio: 'Although the cause of death was reported as infection, Peter, a 30-year-old golf caddy, is convinced that his late girlfriend, Colleen Brown, was murdered.
He is American. He started studying sports science at college but never finished the course. He has a severe phobia of buttons, and is obsessed with zombies.Physically, Peter is in good shape. He is short with cocao skin, brown hair and brown eyes.
He grew up in a middle class neighbourhood. His father left when he was young, leaving him with his mother, who was an addict.
He is currently in a relationship with Tracey Erica White. Tracey is 7 years older than him and works as a sous chef.
Peters best friend is a golf caddy called Jessie Mendoza. They are inseparable. He also hangs around with Coby King and Gail Singh. They enjoy binge-watching boxed sets together.', picture: 'https://i.imgur.com/teiOiNI.jpg') 

g1 = Group.create(name: 'Puppies', group_image: 'https://imgur.com/r/puppies/zQTBqNq', user_id: 1)
g2 = Group.create(name: 'Cats', group_image: 'https://imgur.com/r/cats/QQPuCvi', user_id: 2)
g3 = Group.create(name: 'Yoga', group_image: 'https://imgur.com/gallery/nLA1r', user_id: 1)

k1 = Karma.create(content: 'Thank you for always listening!', user_id: 1)
k2 = Karma.create(content: 'You have been so helpful, thank you!',user_id: 2)
k3 = Karma.create(content: 'Keep up the great work!',user_id: 2)