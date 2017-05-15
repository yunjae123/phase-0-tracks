function longestString(arrayOfWords) {
	var longestWord = ""
	for (var i = 0; i < arrayOfWords.length; i++) {
		if (arrayOfWords[i] > longestWord) {
			longestWord = arrayOfWords[i]
		}
	}
	return longestWord
}
console.log(longestString(["long phrase","longest phrase","longer phrase"]))