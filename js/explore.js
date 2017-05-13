// pseudocode
// loop over a string
// start at the end of string
// print out each letter and combine them until you're at the start of string

function reverse(string) {
	letterArray = []
	for (var i = string.length - 1; i >= 0; i--) {
		letterArray.push(string[i])
	}
	return letterArray.join("")
}

console.log(reverse("hello"))
console.log(reverse("Hello") == "olleH")