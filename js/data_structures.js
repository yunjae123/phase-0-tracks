colorArray = ["blue", "red", "black", "white"];
nameArray = ["Ed", "Edd", "Edison", "Eddy"];

function addColorAndName(color, name) {
	colorArray.push(color);
	nameArray.push(name);
}

function mergeHorses(colors, names) {
	horseObject = {}
	for (var i = 0; i < colors.length; i++) {
		horseObject[names[i]] = colors[i];
	}
	return horseObject;
}
console.log(mergeHorses(colorArray, nameArray))

function Car(name, engineType, goodMpg) {
	this.name = name;
	this.engineType = engineType;
	this.goodMpg = goodMpg;
	this.vroom = function() {
		if (this.engineType === "v4") {
			return "pew pew";
		} else if (this.engineType === "v6") {
			return "wheeeen wheeen";
		} else if (this.engineType === "v8") {
			return "vroom vroom";
		} else if (this.engineType === "v10") {
			return "VROOOM VROOOM";
		} else {
			return "YARRRRR YARRRRR";
		}
	}
	console.log("Car initialization complete")
}

var car1 = new Car("Honda Civic", "v4", true);
console.log(car1.name);
console.log(car1.vroom());
if (car1.goodMpg) {
	console.log("The", car1.name + " has good mileage!");
}

var car2 = new Car("Lamborghini Aventador", "v12", false);
console.log(car2.vroom());
if (car2.goodMpg) {
	console.log("The", car2.name + " has great mileage!")
} else {
	console.log("This thing chugs gas equivalent to 50 " + car1.name + "'s")
}

