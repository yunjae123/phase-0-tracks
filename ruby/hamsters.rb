def ask_questions
	puts "What is the hamster's name?"
	ham_name = gets.chomp

	puts "What is the volume level of #{ham_name}? (Please enter a value between 1-10)"
	noise_level = gets.chomp.to_i

	puts "What is its fur color?"
	fur_color = gets.chomp

	puts "Is it a good candidate for adoption? (Good or Bad)"
	adopt_rating = gets.chomp


	puts "What's its estimated age? Enter a number. (Months)"
	ham_age = gets.chomp.to_i

	return "Okay the hamster you would like to admit into the sanctuary is named #{ham_name} and has a noise level rating of #{noise_level}. The color of #{ham_name}'s fur is descibed as #{fur_color} and is said to be a #{adopt_rating} canidate for adoption. When asked about #{ham_name}'s age, the response given was #{ham_age}."
end;

ask_questions;




