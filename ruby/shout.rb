# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!~" + " :D"
# 	end

# end

# p Shout.yell_happily("Hello")
# p Shout.yell_angrily("Hello")

module Shout 
	def yell(words)
		words + "!!!"
	end

	def scream(words)
		words.upcase + "!!!!!"
	end
end

class Mom
	include Shout
end

class Life
	include Shout
end

mother = Mom.new
p mother.scream("do the dishes yun")

college = Life.new
p college.yell("Bro your finals are next week")