
User.destroy_all

u1 = User.create name: 'Linda', email: 'linda@email.com', password: 'chicken'
u2 = User.create name: 'Ben', email: 'ben@email.com', password: 'chicken'

puts "Created #{ User.all.length } users."


Feeling.destroy_all

f1 = Feeling.create scale: 6, title: 'Weird day', description: 'This is the description of my weird day.'
f2 = Feeling.create scale: 10, title: 'Awesome day', description: 'This is the description of my awesome day.'
f3 = Feeling.create scale: 3, title: 'Terrible day', description: 'This is the description of my terrible day.'

puts "Created #{ Feeling.all.length } feelings."


Comment.destroy_all

c1 = Comment.create title: 'Hello World', body: 'This is a comment!'

puts "Created #{ Comment.all.length } comments."

u1.feelings << f2 << f3
u2.feelings << f1

f1.comments << c1

u1.comments << c1
