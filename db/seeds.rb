User.destroy_all

puts 'creating users...'

u1 = User.create! username: 'test1', email: 'test1@ga.co', password: 'chicken'
u2 = User.create! username: 'test2', email: 'test2@ga.co', password: 'chicken'

puts "created #{User.count} users"
