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

	def initialize
		puts "Initializing new puppy instance..."
	end

end
# corgi = Puppy.new #This is when the initialize method runs. 
# I don't know why or how it runs by itself.
# Ohhhhh it's a special method!
# p corgi.fetch("ball")
# p corgi.speak(5)
# p corgi.roll_over
# p corgi.dog_years(7)
# p corgi.borker(5)

class Cat

	def initialize 
		puts "Kit_kat generated"
	end

	def spit_hairball
		puts "BLEGH"
	end

	def say_meow(number)
		number.times{ puts "Meow BOIII" }
	end

	def up_down(number)
		x = 0
		while x <= number
			if x % 2 == 0
				puts "I'm jumping UP"
			else
				puts "I'm FALLING BOII"
			end
			x += 1
		end
	end

end
kitten = Cat.new
# kitten.say_meow(5)
# kitten.up_down(5)
# kitten.spit_hairball

index = 0
instance_arr = []
loop do 
	break if index > 50
	instance_arr.push(Cat.new)
	index += 1
end

instance_arr.each do |instance|
	puts instance.spit_hairball
end





