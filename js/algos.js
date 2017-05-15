function longestString(arrayOfWords) {
	var longestWord = ""
	for (var i = 0; i < arrayOfWords.length; i++) {
		if (arrayOfWords[i].length > longestWord.length) {
			longestWord = arrayOfWords[i]
		}
	}
	return longestWord
}

// console.log(longestString(["long phrase","longest phrase","longer phrase"]))

function findMatch(obj1, obj2) {
	for (var key in obj1) {
		if (obj1[key] === obj2[key]) {
			return true
		}
	}
	return false
}
console.log(findMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}))

function generateData(length) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
	var resultArray = []

	for (var i = 0; i < length; i++) {
		word = ""
		randomNumber = Math.floor((Math.random() * 10) + 1);
		for (var j = 0; j < randomNumber; j++) {
			randomLetterIndex = Math.floor(Math.random() * 26);
			randomLetter = alphabet[randomLetterIndex]
			word += randomLetter
		}
		resultArray.push(word)
	}
	return resultArray
}
// console.log(generateData(3))

function do10Times() {
	for (var i = 0; i < 10; i++) {
		randArray = generateData(3)
		console.log(longestString(randArray))
	}
}
// console.log(do10Times())