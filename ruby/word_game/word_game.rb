class Wordgame

	def initialize(word)
		@word = word.downcase.split("")
		@number_of_guesses = word.length
		@guess_count = 0
		@all_guesses = []
	end

	def repeat_guess(letter)

		if @all_guesses.index(letter) == nil
			@guess_count += 1
			@all_guesses.push(letter)
			p "if case"
		else
			return false
		end
	end

end

test = Wordgame.new("Hey")
