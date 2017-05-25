require "sqlite3"
require "faker"

database = SQLite3::Database.new("friends.db")

make_table = <<-MAKETABLE
	CREATE TABLE IF NOT EXISTS friends(
		id integer primary key,
		name varchar(255),
		age int
	) 
MAKETABLE

database.execute(make_table)



def make_friends(database, name, age)
	database.execute("INSERT INTO friends (name, age) VALUES (?, ?)", [name, age])
end

def birthday_all(database)
	friends = database.execute("SELECT * FROM friends")
	friends.each do |friend|
		puts friend[1].to_s + " who was " + friend[2].to_s + " is now " + (friend[2] + 1).to_s + "!"
	end
end
# 100.times do 
# 	make_friends(database, Faker::Name.name, 18 + rand(20))
# end

friends = database.execute("SELECT * FROM friends")

# friends.each do |friend|
# 	puts "My friend " + friend[1].to_s + " is " + friend[2].to_s + " years old!"
# end

birthday_all(database)