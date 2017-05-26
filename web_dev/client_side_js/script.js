
console.log("IS IT WORKING?")
var lis = document.getElementsByTagName("li");
var li = lis[0];

li.style.border = "10px solid pink"

var photo = document.getElementById("lizard-photo")

function hidePhoto(event) {
	photo.hidden = true;
}
li.addEventListener("click", hidePhoto)