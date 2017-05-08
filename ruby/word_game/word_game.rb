class Wordgame
	attr_reader :guess_count, :number_of_guesses, :progress, :game_won

	def initialize(word)
		@word = word.downcase.split("")
		@number_of_guesses = word.length * 2
		@guess_count = 0
		@all_guesses = []
		@game_won = false
		@blank_space = "_" * word.length
		@progress = @blank_space.split("")
	end

	def take_guess(guess)
		if repeat_guess(guess) == true
			index = 0
			while index < @word.length
				if @word[index] == guess
					@progress[index] = guess
				end
				index += 1
			end

			if @progress.index("_") == nil
				@game_won = true
			end
		end
	end

	def repeat_guess(letter)
		if @all_guesses.index(letter) == nil
			@guess_count += 1
			@all_guesses.push(letter)
			return true
			
		else
			return false
		end
	end

end

# puts "Hey welcome to hangman, pick a word"
# game = Wordgame.new(gets.chomp)

# until game.guess_count == game.number_of_guesses
# 	puts "pick a letter to guess"
# 	guess = gets.chomp
# 	game.take_guess(guess)
# 	p game.progress.join(" ")
# 	p "Number of guesses you made :" + game.guess_count.to_s
# 	if game.game_won == true
# 		puts "DUDE YOU DID IT"
# 		break
# 	end
# end

# if game.guess_count == game.number_of_guesses
# 	puts "YOU SUCK BOI"
# end





