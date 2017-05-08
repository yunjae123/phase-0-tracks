require_relative "word_game"

describe Wordgame do
	let(:game) {Wordgame.new("Hello")}

	it "checks if input guess is a repeat" do
		game.repeat_guess("a")
		expect(game.repeat_guess("a")).to eq false
	end

	it "takes a guess (letter) and checks if it's in the word" do
		game.take_guess("h")
		game.take_guess("e")
		game.take_guess("l")
		expect(game.progress).to eq ["h","e","l","l","_"]
	end
end