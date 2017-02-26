restaurant_menu = {

breakfast: {
plates: ["two_egg", "omelet", "hash and rice"],
bfast_sandwiches:["bacon egg cheese", "turkey egg white", "lox_creamcheese"],
other:["oatmeal", "yogurt and fruit", "avocado_toast"],
}, 

lunch: {
soups: ["clam chowder", "gumbo", "gazpacho" ],
salads: ["argula", "three bean", "mediterranean" ],
sandwiches: ["blt", "turkey special", "roast beef"],
platters: ["tacos", "chorizo bake", "pesto pasta"]

},

dinner: {
appetizers: ["calamari", "crab cakes", "pigs in blanket"],
salads: ["tomato cyclone", "caesar", "ipanema"],
entrees: ["steak", "bolognese", "pork belly", "halibut" ],

},

dessert: ["ice cream", "flourless cake", "apple pie", "dark chocolate milkshake"], 

bar: {cocktails: ["aviator", "dark n stormy", "old fashioned"], 
	beer:["amber", "cider", "lager", "porter", "pilsner"]}, 

wine: { red: ["pinot_noir", "barbaresco", "barolo", "cabernet"], white: ["chablis", "sauvignon_blanc", "chardonnay"], rose: ["dry", "fruity"]}

}

p restaurant_menu

p restaurant_menu[:breakfast][:bfast_sandwiches][1]

p restaurant_menu[:wine][:rose][1] == "fruity"

p restaurant_menu[:dinner][:entrees][1] = "chicken parmagiana"

p restaurant_menu[:bar][:cocktails]

restaurant_menu[:bar][:cocktails].reverse!

p restaurant_menu[:bar][:cocktails]

p restaurant_menu