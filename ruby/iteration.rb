def went_uphill
	name_uno = "jack"
	name_dos = "jill"
	puts "One day, "
	yield(name_uno, name_dos)
end
# puts went_uphill { |name1, name2| "#{name1} and #{name2} went up the hill." }

music_genre = ["hip-hop"," rock", "jazz", "country"]
nicknames = {
	yun: "Dr.chang",
	spencer: "Renrow",
	dami: "Dam-dam",
	ung: "Baboon",
	kevin: "nerd"
}

# nicknames.each do |name, nick|
# 	puts "#{name}'s nickname is #{nick}!!"
# end


# p music_genre
# music_genre.map! do |genre|
# 	genre.upcase
# end
# p music_genre


# new_hash = {
# 	a: 10,
# 	b: 10,
# 	c: 10,
# 	d: 10,
# 	e: 10
# }

# new_hash = new_hash.map do |letter, value|
# 	value * 5
# end
# p new_hash


# arr1 = [1,2,3,4,5,6,7,8,9,10]
# arr1.delete_if { |x| x < 5 }
# p arr1


# hash1 = {
# 	one: 1,
# 	two: 2,
# 	three: 3,
# 	four: 4
# }
# hash1.delete_if { |word, digit| digit < 3 }
# p hash1


# arr2 = [1,2,3,4,5,6,7,8,9,10]
# arr2.keep_if { |x| x == 7 }
# p arr2


# hash2 = {
# 	one: 1,
# 	two: 2,
# 	three: 3,
# 	four: 4
# }
# hash2.keep_if { |word, digit| digit != 4 }
# p hash2


# arr3 = [1,2,3,4,5,6,7,8,9,10]
# arr3.select! { |x| x != 4 }
# p arr3


# hash3 = {
# 	one: 1,
# 	two: 2,
# 	three: 3,
# 	four: 4
# }
# hash3.select! { |word, digit| word.length < 4 }
# p hash3


arr4 = [1,2,3,4,5,6,7,8,9,10]
arr4.reject! { |x| x < 5 }
p arr4


hash4 = {
	one: 1,
	two: 2,
	three: 3,
	four: 4
}
puts hash4.reject { |word, digit| word.length == 3 }












