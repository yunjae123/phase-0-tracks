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
end

corgi = Puppy.new
p corgi.speak(4)