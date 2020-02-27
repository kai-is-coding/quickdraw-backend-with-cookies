Playroom.destroy_all
puts 'creating playrooms...'
p1 = Playroom.create! title: 'playroom1', drawer: 1, guesser: 1
p2 = Playroom.create! title: 'playroom2', drawer: 1, guesser: 2
puts "created #{Playroom.count} playrooms"

Draw.destroy_all
puts 'creating draws...'
d1 = Draw.create! name: 'draw1', playroom: p1
d2 = Draw.create! name: 'draw2'
puts "created #{Draw.count} draws"

User.destroy_all
puts 'creating users...'
u1 = User.create! username: 'test1', email: 'test1@ga.co', password: 'chicken'
u2 = User.create! username: 'test2', email: 'test2@ga.co', password: 'chicken'
u3 = User.create! username: 'test3', email: 'test3@ga.co', password: 'chicken'
u4 = User.create! username: 'test4', email: 'test4@ga.co', password: 'chicken'
u5 = User.create! username: 'test5', email: 'test5@ga.co', password: 'chicken'
puts "created #{User.count} users"
