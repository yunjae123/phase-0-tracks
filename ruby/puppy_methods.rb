class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

corgi = Puppy.new

class Puppy
	def speak(number)
		number.times do
			puts "Woof!"
		end
	end
end

p corgi.speak(4)