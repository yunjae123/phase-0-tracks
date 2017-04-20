def ask_questions
	puts "What is the hamster's name?"
	ham_name = gets.chomp

	puts "What is the volume level of #{ham_name}? (Please enter a value between 1-10)"
	volume_level = gets.chomp

	puts "What is its fur color?"
	fur_color = gets.chomp

	puts "Is it a good candidate for adoption? (Y/N)"
	good_candidate = gets.chomp

	puts "What's its estimated age?"
	estimated_age = gets.chomp
end;
ask_questions;

