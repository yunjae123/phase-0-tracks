require_relative "word_game"

describe Wordgame do
	let(:game) {Wordgame.new("Hello")}

	it "checks if input guess is a repeat" do
		game.repeat_guess("a")
		expect(game.repeat_guess("a")).to eq "else case"
	end
end