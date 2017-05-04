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

	def dog_years(human_years)
		puts human_years * 7
	end
end

corgi = Puppy.new
p corgi.dog_years(5)