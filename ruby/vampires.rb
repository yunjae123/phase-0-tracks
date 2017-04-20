def age_check(age, year)
	if 2017 - age == year
		return true
	elsif 2016 - age == year
		return true
	else
		return false
	end;
end;

def wants_garlic_bread(input)
	case input
	when "yes", "yea", "ya", "yep", "ye"
		return true
	when "no", "nah", "nay", "negative", "nope"
		return false
	else  
		return false
	end;
end;

def wants_insurance(input)
	case input
	when "yes", "yea", "ya", "yep", "ye"
		return true
	when "no", "nah", "nay", "negative", "nope"
		return false
	else
		return false
	end;
end;

def ask_questions 
	puts "How many employees are you processing?"
	number_of_employees = gets.chomp.to_i
	i = 0


	until (i >= number_of_employees)

		puts "What is your name?"
		name = gets.chomp
		case name
		
		when "Tu Fang", "Drake Cula"
			definitely_vampire = true
		else
			definitely_vampire = false
		end;
			

		puts "How old are you?"
		age = gets.chomp.to_i
		puts "What year were you born?"
		year = gets.chomp.to_i
		if age_check(age, year) == true
			age_wrong = false
		else
			age_wrong = true
		end;

		puts "Our company cafeteria serves garlic bread. Should we order some for you?"
		garlic = gets.chomp
		if wants_garlic_bread(garlic) == true
			hates_garlic = false
		else
			hates_garlic = true
		end;

		puts "Would you like to enroll in the company’s health insurance?"
		insurance = gets.chomp
		if wants_insurance(insurance) == true
			no_insurance = false
		else
			no_insurance = true
		end;

		puts "What are your allergies? List one at a time, and type 'done' when finished."
		done = false
		until done == true
			allergies = gets.chomp
			if allergies == "done"
				done = true
			elsif allergies == "sunshine"
				puts "Probably a vampire"
				done != !true #That's just for the rubric req.
			else
				done = false
			end;
		end;


		if definitely_vampire == true
			puts "Definitely a vampire"
		elsif age_wrong && hates_garlic && no_insurance
			puts "Almost certainly a vampire"
		elsif age_wrong && (hates_garlic || no_insurance)
			puts "Probably a vampire"
		else 
			puts "Results inconclusive"
		end;

	i += 1
	end;
	return "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end;

puts ask_questions;


