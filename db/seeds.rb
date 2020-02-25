Playroom.destroy_all
puts 'creating playrooms...'
p1 = Playroom.create! title: 'playroom1'
p2 = Playroom.create! title: 'playroom2'
puts "created #{Playroom.count} playrooms"

Draw.destroy_all
puts 'creating draws...'
d1 = Draw.create! name: 'draw1', playroom: p1
d2 = Draw.create! name: 'draw2'
puts "created #{Draw.count} draws"

User.destroy_all
puts 'creating users...'
u1 = User.create! username: 'test1', email: 'test1@ga.co', password: 'chicken', draw: true,
playroom_id: p1.id
u2 = User.create! username: 'test2', email: 'test2@ga.co', password: 'chicken', draw: false, playroom_id: p1.id
puts "created #{User.count} users"
