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

nicknames.each do |name, nick|
	puts "#{name}'s nickname is #{nick}!!"
end

p music_genre
music_genre.map! do |genre|
	genre.upcase
end
p music_genre
