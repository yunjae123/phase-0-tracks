class Santa

	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
		p @reindeer_ranking
	end
end
#### TESTING
# test_santa = Santa.new("oldman", "male")
# p test_santa.celebrate_birthday
# p test_santa.gender = "female"

#### RELEASE 4
example_genders = ["agender", "cat", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# 200000.times do
# 	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
# 	santa.age = rand(1..140)
# 	puts santa.age
# 	puts santa.gender
# 	puts santa.ethnicity
# end

# def santa_maker(number_of_santas)
# 	example_genders = ["agender", "cat", "bigender", "male", "female", "gender fluid", "N/A"]
# 	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# 	index = 0

# 	while index < number_of_santas
# 		santa = Santa.new(example_genders.sample, example_ethnicities.sample)
# 		santa.age = rand(140)
# 		puts santa.age
# 		puts santa.gender
# 		puts santa.ethnicity
# 		index += 1
# 	end
# end
# santa_maker(100000)
