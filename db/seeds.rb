Playroom.destroy_all

puts 'creating playrooms...'
p1 = Playroom.create! title: 'playroom1'
p2 = Playroom.create! title: 'playroom2'

puts "created #{Playroom.count} playrooms"


User.destroy_all

puts 'creating users...'

u1 = User.create! username: 'test1', email: 'test1@ga.co', password: 'chicken', playroom_id: p1.id
u2 = User.create! username: 'test2', email: 'test2@ga.co', password: 'chicken', playroom_id: p1.id

puts "created #{User.count} users"
