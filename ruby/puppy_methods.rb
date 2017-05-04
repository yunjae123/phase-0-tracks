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

	def borker(number)
		borks = ["bork", "bark", "york", "grrr", "berk", "yip"]
		finished_bork = []
		number.times do 
			rand_num = rand(borks.length)
			finished_bork.push(borks[rand_num])
		end
		return finished_bork.join(" ")
	end

end

corgi = Puppy.new
p corgi.borker(5)


