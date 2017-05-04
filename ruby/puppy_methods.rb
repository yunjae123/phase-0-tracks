class Puppy

	def fetch(toy)
	  puts "I brought back the #{toy}!"
	  toy
	end

	def speak(number)
		number.times do
			puts "Woof!"
		end
	end

	def roll_over
		puts "*rolls over*"
	end
end

corgi = Puppy.new
p corgi.roll_over