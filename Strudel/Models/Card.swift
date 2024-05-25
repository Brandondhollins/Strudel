//
//  Card.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/25/24.
//

import SwiftUI
struct Card: Identifiable {
    let id = UUID()
    let name: String
    let image: Image
    let description: String
    let ingredients: String
    let directions: String
    let datePublished: String
}

var cards = [
    Card(
        name: "Enchanted Herb Tartlets",
        image: Image("strudel1"),
        description: "Magical mini tarts filled with enchanted herbs and a touch of pixie dust.",
        ingredients: "1 sheet puff pastry\n1/2 cup ricotta cheese\n1/4 cup mixed fresh herbs (parsley, thyme, rosemary)\nSalt and pepper to taste\nPixie dust (optional)",
        directions: "1. Preheat oven to 375°F.\n2. Roll out puff pastry and cut into small circles.\n3. Mix ricotta cheese with chopped herbs, salt, and pepper.\n4. Place a spoonful of herb mixture on each pastry circle.\n5. Fold edges slightly and bake for 15 minutes or until golden.\n6. Sprinkle with pixie dust before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Dragonfire Salad",
        image: Image("strudel2"),
        description: "A fiery salad that will ignite your taste buds with a blend of spicy greens and roasted dragon peppers.",
        ingredients: "2 cups mixed greens\n1 cup roasted red peppers\n1/2 cup spicy dragon fruit\n1/4 cup crumbled goat cheese\nDragonfire dressing",
        directions: "1. Combine greens, roasted peppers, and dragon fruit in a large bowl.\n2. Sprinkle goat cheese on top.\n3. Drizzle with Dragonfire dressing.\n4. Toss to combine and serve immediately.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Mystic Berry Pie",
        image: Image("strudel3"),
        description: "A mystical pie filled with an array of enchanted berries, perfect for any woodland gathering.",
        ingredients: "1 pie crust\n2 cups mixed enchanted berries\n1 cup sugar\n1/2 cup mystical berry juice\n1 tbsp cornstarch",
        directions: "1. Preheat oven to 375°F.\n2. Roll out pie crust and place in pie pan.\n3. Mix berries, sugar, and cornstarch until well combined.\n4. Pour berry mixture into crust.\n5. Bake for 45 minutes or until crust is golden.\n6. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Elven Spaghetti Delight",
        image: Image("strudel4"),
        description: "A delicate spaghetti dish infused with elven magic, featuring sun-dried tomatoes and woodland mushrooms.",
        ingredients: "1 package spaghetti\n1/2 cup sun-dried tomatoes\n1 cup sliced mushrooms\n1/4 cup olive oil\n1 tsp elven spice blend",
        directions: "1. Cook spaghetti according to package instructions.\n2. Sauté sun-dried tomatoes and mushrooms in olive oil until tender.\n3. Add cooked spaghetti and elven spice blend.\n4. Toss to combine and serve.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Pixie Strawberry Tart",
        image: Image("strudel5"),
        description: "A delightful tart made with sweet strawberries and a touch of pixie magic.",
        ingredients: "1 tart crust\n2 cups sliced strawberries\n1 cup sugar\n1/2 cup strawberry jam\nPixie sugar for garnish",
        directions: "1. Preheat oven to 375°F.\n2. Roll out tart crust and place in tart pan.\n3. Arrange sliced strawberries in the crust.\n4. Sprinkle sugar over strawberries.\n5. Bake for 30 minutes or until crust is golden.\n6. Brush with strawberry jam and garnish with pixie sugar.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Goblin's Festive Stew",
        image: Image("strudel6"),
        description: "A hearty stew filled with root vegetables and goblin spices, perfect for a festive feast.",
        ingredients: "2 cups diced potatoes\n1 cup chopped carrots\n1 cup chopped celery\n1/2 cup diced onions\n4 cups vegetable broth\nGoblin spice mix",
        directions: "1. In a large pot, sauté onions in olive oil until soft.\n2. Add potatoes, carrots, and celery, and cook for 5 minutes.\n3. Pour in vegetable broth and goblin spice mix.\n4. Bring to a boil, then simmer for 30 minutes.\n5. Serve hot with crusty bread.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Fairy Dust Cookies",
        image: Image("strudel7"),
        description: "Delightful cookies sprinkled with fairy dust, perfect for a magical tea party.",
        ingredients: "1 cup butter\n1 cup sugar\n2 cups flour\n1 tsp vanilla extract\nFairy dust (colored sugar)",
        directions: "1. Preheat oven to 350°F.\n2. Cream together butter and sugar until light and fluffy.\n3. Mix in flour and vanilla extract until combined.\n4. Roll dough into small balls and place on a baking sheet.\n5. Flatten each ball slightly and sprinkle with fairy dust.\n6. Bake for 10-12 minutes or until edges are golden.\n7. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Magical Muffins",
        image: Image("strudel8"),
        description: "Muffins infused with magical ingredients, perfect for a morning boost.",
        ingredients: "2 cups flour\n1 cup sugar\n1/2 cup butter\n1 cup milk\n2 tsp baking powder\n1 tsp vanilla extract\n1 cup magical berries",
        directions: "1. Preheat oven to 375°F.\n2. Mix together flour, sugar, and baking powder.\n3. Add butter, milk, and vanilla extract, and stir until combined.\n4. Fold in magical berries.\n5. Pour batter into muffin tin and bake for 20 minutes.\n6. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Lemon Basil Fairy Fritters",
        image: Image("strudel9"),
        description: "Light and fluffy fritters with a hint of lemon and basil, perfect for a fairy feast.",
        ingredients: "1 cup flour\n1/2 cup milk\n1 egg\n1 tbsp lemon zest\n1 tbsp chopped fresh basil\n1 tsp baking powder\nSalt to taste\nOil for frying",
        directions: "1. In a bowl, whisk together flour, milk, and egg until smooth.\n2. Add lemon zest, basil, baking powder, and salt.\n3. Heat oil in a frying pan over medium heat.\n4. Drop spoonfuls of batter into hot oil and fry until golden brown.\n5. Drain on paper towels and serve warm.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Mystic Hand Pies",
        image: Image("strudel10"),
        description: "Hand pies filled with a savory mix of vegetables and herbs, perfect for an on-the-go snack.",
        ingredients: "1 sheet puff pastry\n1 cup chopped mushrooms\n1/2 cup diced onions\n1/2 cup spinach\n1/4 cup feta cheese\n1 tbsp olive oil\nSalt and pepper to taste",
        directions: "1. Preheat oven to 375°F.\n2. Sauté onions and mushrooms in olive oil until soft.\n3. Add spinach and cook until wilted.\n4. Season with salt and pepper.\n5. Roll out puff pastry, place vegetable mix and feta in the center, fold and seal edges.\n6. Bake for 20 minutes or until golden.\n7. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Dwarven Feast Platter",
        image: Image("strudel11"),
        description: "A hearty platter filled with an assortment of dwarven delights, perfect for a grand feast.",
        ingredients: "Assorted meats (ham, sausage, beef)\nCheeses (cheddar, gouda, blue)\nPickles\nFresh bread\nMustard and other condiments",
        directions: "1. Arrange assorted meats and cheeses on a large platter.\n2. Add pickles and fresh bread on the side.\n3. Serve with mustard and other condiments.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Wizard's Spellbound Cookies",
        image: Image("strudel12"),
        description: "Delicious cookies with a magical twist, perfect for any wizard's gathering.",
        ingredients: "1 cup butter\n1 cup sugar\n2 cups flour\n1 tsp vanilla extract\n1/2 cup chocolate chips\n1/4 cup spellbound sprinkles",
        directions: "1. Preheat oven to 350°F.\n2. Cream together butter and sugar until light and fluffy.\n3. Mix in flour and vanilla extract until combined.\n4. Fold in chocolate chips and spellbound sprinkles.\n5. Drop spoonfuls of dough onto a baking sheet.\n6. Bake for 10-12 minutes or until edges are golden.\n7. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Elven Cinnamon Twists",
        image: Image("strudel13"),
        description: "Light and flaky cinnamon twists, perfect for an elven tea party.",
        ingredients: "1 sheet puff pastry\n1/4 cup sugar\n1 tbsp cinnamon\n1/4 cup melted butter",
        directions: "1. Preheat oven to 375°F.\n2. Roll out puff pastry and brush with melted butter.\n3. Sprinkle with sugar and cinnamon.\n4. Cut into strips and twist each strip.\n5. Place on a baking sheet and bake for 15 minutes or until golden.\n6. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Gnomish Star Cookies",
        image: Image("strudel14"),
        description: "Delightful star-shaped cookies, a favorite among gnomes.",
        ingredients: "1 cup butter\n1 cup sugar\n2 cups flour\n1 tsp vanilla extract\nStar-shaped cookie cutter\nColored sugar for decoration",
        directions: "1. Preheat oven to 350°F.\n2. Cream together butter and sugar until light and fluffy.\n3. Mix in flour and vanilla extract until combined.\n4. Roll out dough and cut into star shapes.\n5. Place on a baking sheet and sprinkle with colored sugar.\n6. Bake for 10-12 minutes or until edges are golden.\n7. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Druid's Pancake Stack",
        image: Image("strudel15"),
        description: "Fluffy pancakes infused with the essence of the forest, perfect for a druid's breakfast.",
        ingredients: "1 cup flour\n1 tbsp sugar\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 tsp salt\n1 cup buttermilk\n1 egg\n2 tbsp melted butter\nMaple syrup and forest berries for topping",
        directions: "1. In a bowl, whisk together flour, sugar, baking powder, baking soda, and salt.\n2. Add buttermilk, egg, and melted butter, and stir until combined.\n3. Heat a griddle or frying pan over medium heat and lightly grease.\n4. Pour batter onto griddle and cook until bubbles form on the surface.\n5. Flip and cook until golden brown.\n6. Serve with maple syrup and forest berries.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Hobbit's Sandwich",
        image: Image("strudel16"),
        description: "A hearty sandwich packed with layers of meat, cheese, and fresh vegetables, perfect for second breakfast.",
        ingredients: "2 slices of hearty bread\n2 slices of ham\n2 slices of turkey\n1 slice of cheddar cheese\n1 slice of Swiss cheese\nLettuce, tomato, and pickles\nMustard and mayonnaise",
        directions: "1. Layer meats and cheeses on one slice of bread.\n2. Add lettuce, tomato, and pickles.\n3. Spread mustard and mayonnaise on the other slice of bread.\n4. Assemble the sandwich and enjoy.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Witch's Spiced Cider Donuts",
        image: Image("strudel17"),
        description: "Donuts infused with spiced cider, perfect for a witch's brew.",
        ingredients: "2 cups flour\n1/2 cup sugar\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 tsp salt\n1 tsp cinnamon\n1/2 cup apple cider\n1/4 cup buttermilk\n1 egg\n2 tbsp melted butter\nOil for frying\nCinnamon sugar for coating",
        directions: "1. In a bowl, whisk together flour, sugar, baking powder, baking soda, salt, and cinnamon.\n2. Add apple cider, buttermilk, egg, and melted butter, and stir until combined.\n3. Heat oil in a frying pan over medium heat.\n4. Drop spoonfuls of batter into hot oil and fry until golden brown.\n5. Drain on paper towels and roll in cinnamon sugar.\n6. Serve warm.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Sorcerer's Golden Toast",
        image: Image("strudel18"),
        description: "Golden toast with a hint of magic, perfect for a sorcerer's breakfast.",
        ingredients: "2 slices of bread\n1 egg\n1/4 cup milk\n1 tsp vanilla extract\n1/4 tsp cinnamon\nButter for frying\nMaple syrup and powdered sugar for topping",
        directions: "1. In a bowl, whisk together egg, milk, vanilla extract, and cinnamon.\n2. Dip bread slices into the egg mixture, coating both sides.\n3. Heat butter in a frying pan over medium heat.\n4. Fry bread slices until golden brown on both sides.\n5. Serve with maple syrup and powdered sugar.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Pixie Fruit Toast",
        image: Image("strudel19"),
        description: "A whimsical toast topped with fresh fruits and a sprinkle of pixie dust.",
        ingredients: "2 slices of toast\n1/2 cup mixed fresh fruits (berries, kiwi, banana)\n1 tbsp honey\nPixie dust (colored sugar) for garnish",
        directions: "1. Toast the bread slices until golden brown.\n2. Arrange fresh fruits on top of the toast.\n3. Drizzle with honey.\n4. Sprinkle with pixie dust and serve.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Druid's Forest Stew",
        image: Image("strudel20"),
        description: "A hearty stew filled with forest vegetables and wild herbs, perfect for a druid's dinner.",
        ingredients: "2 cups diced potatoes\n1 cup chopped carrots\n1 cup chopped celery\n1/2 cup diced onions\n4 cups vegetable broth\n1 tsp wild herb blend",
        directions: "1. In a large pot, sauté onions in olive oil until soft.\n2. Add potatoes, carrots, and celery, and cook for 5 minutes.\n3. Pour in vegetable broth and wild herb blend.\n4. Bring to a boil, then simmer for 30 minutes.\n5. Serve hot with crusty bread.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Elven Mushroom Medley",
        image: Image("strudel21"),
        description: "A medley of mushrooms cooked with elven spices, perfect for a woodland feast.",
        ingredients: "2 cups mixed mushrooms (shiitake, portobello, button)\n1/4 cup olive oil\n1 tbsp elven spice blend\nSalt and pepper to taste\nFresh parsley for garnish",
        directions: "1. Clean and slice the mushrooms.\n2. Heat olive oil in a pan over medium heat.\n3. Add mushrooms and cook until tender.\n4. Sprinkle with elven spice blend, salt, and pepper.\n5. Garnish with fresh parsley and serve.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Dark Forest Berry Crumble",
        image: Image("strudel22"),
        description: "A rich and mysterious berry crumble that brings the flavors of the dark forest to your table.",
        ingredients: "2 cups mixed dark berries (blackberries, blueberries)\n1 cup oats\n1/2 cup flour\n1/2 cup brown sugar\n1/4 cup butter\n1 tsp cinnamon",
        directions: "1. Preheat oven to 350°F.\n2. Mix berries with a bit of sugar and place in a baking dish.\n3. Combine oats, flour, brown sugar, and cinnamon, then cut in butter until crumbly.\n4. Sprinkle the crumble mixture over berries.\n5. Bake for 30 minutes or until topping is golden brown.\n6. Serve warm with a scoop of vanilla ice cream.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Gnomish Spice Cake",
        image: Image("strudel23"),
        description: "A delightful and aromatic spice cake, perfect for gnomish celebrations.",
        ingredients: "2 cups flour\n1 cup sugar\n1/2 cup butter\n2 eggs\n1 cup milk\n2 tsp cinnamon\n1 tsp nutmeg\n1/2 tsp cloves\n1 tsp baking powder",
        directions: "1. Preheat oven to 350°F.\n2. Cream together butter and sugar until light and fluffy.\n3. Add eggs one at a time, beating well after each addition.\n4. Mix in dry ingredients alternately with milk.\n5. Pour batter into a greased cake pan and bake for 35-40 minutes or until a toothpick comes out clean.\n6. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Elven Cranberry Delight",
        image: Image("strudel24"),
        description: "A light and refreshing cranberry tart that delights the senses, perfect for elven gatherings.",
        ingredients: "1 tart crust\n2 cups fresh cranberries\n1 cup sugar\n1/2 cup orange juice\n1 tsp vanilla extract\nWhipped cream for serving",
        directions: "1. Preheat oven to 375°F.\n2. Roll out tart crust and place in tart pan.\n3. Mix cranberries, sugar, orange juice, and vanilla extract until combined.\n4. Pour cranberry mixture into crust.\n5. Bake for 30 minutes or until crust is golden and filling is bubbly.\n6. Let cool before serving with whipped cream.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Hobbit's Feast Platter",
        image: Image("strudel25"),
        description: "An assortment of hearty appetizers perfect for a hobbit's feast.",
        ingredients: "Assorted meats (ham, turkey, sausage)\nCheeses (cheddar, brie, gouda)\nFresh bread and crackers\nPickles, olives, and fruits",
        directions: "1. Arrange meats, cheeses, bread, and crackers on a large platter.\n2. Add pickles, olives, and fruits.\n3. Serve with mustard and other condiments.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Cinnamon Scrolls of Wisdom",
        image: Image("strudel26"),
        description: "Warm and gooey cinnamon rolls that grant a moment of clarity with every bite.",
        ingredients: "2 cups flour\n1/2 cup sugar\n1/2 cup milk\n1/4 cup butter\n1 egg\n1 tbsp yeast\n1 tbsp cinnamon\n1/2 cup brown sugar",
        directions: "1. Preheat oven to 350°F.\n2. Dissolve yeast in warm milk and let sit for 5 minutes.\n3. Mix in butter, sugar, and egg until combined.\n4. Add flour and knead until smooth.\n5. Let dough rise for 1 hour.\n6. Roll out dough, spread with butter, and sprinkle with cinnamon and brown sugar.\n7. Roll up dough and cut into slices.\n8. Place slices in a baking dish and let rise for 30 minutes.\n9. Bake for 20-25 minutes or until golden brown.\n10. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Goblin Glazed Donuts",
        image: Image("strudel27"),
        description: "Deliciously wicked donuts with a sweet glaze, perfect for goblin gatherings.",
        ingredients: "2 cups flour\n1/2 cup sugar\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 tsp salt\n1 cup buttermilk\n1 egg\n2 tbsp melted butter\nOil for frying\nGlaze (powdered sugar, milk, vanilla)",
        directions: "1. In a bowl, whisk together flour, sugar, baking powder, baking soda, and salt.\n2. Add buttermilk, egg, and melted butter, and stir until combined.\n3. Heat oil in a frying pan over medium heat.\n4. Drop spoonfuls of batter into hot oil and fry until golden brown.\n5. Drain on paper towels.\n6. Mix powdered sugar, milk, and vanilla to make glaze.\n7. Dip donuts in glaze and let set before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Dwarven Meat Pies",
        image: Image("strudel28"),
        description: "Hearty and savory meat pies, a staple at any dwarven feast.",
        ingredients: "1 sheet puff pastry\n1 cup ground beef\n1/2 cup diced onions\n1/2 cup diced potatoes\n1/4 cup peas\n1 tbsp flour\n1/2 cup beef broth\nSalt and pepper to taste",
        directions: "1. Preheat oven to 375°F.\n2. Cook ground beef with onions and potatoes until beef is browned and vegetables are tender.\n3. Stir in flour and beef broth, and cook until thickened.\n4. Add peas and season with salt and pepper.\n5. Roll out puff pastry and cut into circles.\n6. Place a spoonful of meat mixture on each circle, fold and seal edges.\n7. Bake for 20 minutes or until golden.\n8. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Wizard's Chocolate Cake",
        image: Image("strudel29"),
        description: "A rich and magical chocolate cake, perfect for any wizard's dessert.",
        ingredients: "1 cup flour\n1 cup sugar\n1/2 cup cocoa powder\n1/2 cup butter\n2 eggs\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 cup milk\n1 tsp vanilla extract",
        directions: "1. Preheat oven to 350°F.\n2. Cream together butter and sugar until light and fluffy.\n3. Add eggs one at a time, beating well after each addition.\n4. Mix in dry ingredients alternately with milk.\n5. Pour batter into a greased cake pan and bake for 35-40 minutes or until a toothpick comes out clean.\n6. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Dragonfruit Pancakes",
        image: Image("strudel30"),
        description: "Bright and exotic pancakes infused with the essence of dragonfruit.",
        ingredients: "1 cup flour\n1 tbsp sugar\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 tsp salt\n1 cup dragonfruit puree\n1 egg\n2 tbsp melted butter\nMaple syrup for topping",
        directions: "1. In a bowl, whisk together flour, sugar, baking powder, baking soda, and salt.\n2. Add dragonfruit puree, egg, and melted butter, and stir until combined.\n3. Heat a griddle or frying pan over medium heat and lightly grease.\n4. Pour batter onto griddle and cook until bubbles form on the surface.\n5. Flip and cook until golden brown.\n6. Serve with maple syrup.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Mystic Berry Waffles",
        image: Image("strudel31"),
        description: "Waffles infused with mystical berries, perfect for a magical breakfast.",
        ingredients: "1 cup flour\n1 tbsp sugar\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 tsp salt\n1 cup milk\n1 egg\n2 tbsp melted butter\n1 cup mixed berries\nWhipped cream for topping",
        directions: "1. In a bowl, whisk together flour, sugar, baking powder, baking soda, and salt.\n2. Add milk, egg, and melted butter, and stir until combined.\n3. Fold in mixed berries.\n4. Preheat waffle iron and lightly grease.\n5. Pour batter into waffle iron and cook until golden brown.\n6. Serve with whipped cream.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Hobbit's Apple Pie",
        image: Image("strudel32"),
        description: "A classic apple pie with a hobbit's touch, perfect for any cozy gathering.",
        ingredients: "1 pie crust\n6 cups sliced apples\n1 cup sugar\n1 tbsp flour\n1 tsp cinnamon\n1/2 tsp nutmeg\n1 tbsp lemon juice\n1 tbsp butter",
        directions: "1. Preheat oven to 375°F.\n2. Roll out pie crust and place in pie pan.\n3. Mix apples, sugar, flour, cinnamon, nutmeg, and lemon juice until combined.\n4. Pour apple mixture into crust and dot with butter.\n5. Cover with top crust and seal edges.\n6. Bake for 45 minutes or until crust is golden.\n7. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Fairy Berry Tartlets",
        image: Image("strudel33"),
        description: "Mini tartlets filled with a variety of fresh berries, perfect for a fairy tea party.",
        ingredients: "1 sheet puff pastry\n1 cup mixed fresh berries\n1/4 cup sugar\n1 tbsp lemon juice\nWhipped cream for topping",
        directions: "1. Preheat oven to 375°F.\n2. Roll out puff pastry and cut into small circles.\n3. Mix berries, sugar, and lemon juice until combined.\n4. Place a spoonful of berry mixture on each pastry circle.\n5. Bake for 15 minutes or until golden.\n6. Let cool before serving with whipped cream.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Elven Blueberry Muffins",
        image: Image("strudel34"),
        description: "Light and fluffy muffins bursting with blueberries, perfect for an elven breakfast.",
        ingredients: "2 cups flour\n1 cup sugar\n1/2 cup butter\n1 cup milk\n2 tsp baking powder\n1 tsp vanilla extract\n1 cup blueberries",
        directions: "1. Preheat oven to 375°F.\n2. Mix together flour, sugar, and baking powder.\n3. Add butter, milk, and vanilla extract, and stir until combined.\n4. Fold in blueberries.\n5. Pour batter into muffin tin and bake for 20 minutes.\n6. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Dwarven Gingerbread Loaf",
        image: Image("strudel35"),
        description: "A spiced gingerbread loaf that brings warmth and cheer to any dwarven feast.",
        ingredients: "2 cups flour\n1 cup sugar\n1/2 cup molasses\n1/2 cup butter\n1 cup hot water\n2 tsp ginger\n1 tsp cinnamon\n1/2 tsp cloves\n1/2 tsp baking soda",
        directions: "1. Preheat oven to 350°F.\n2. Mix flour, sugar, ginger, cinnamon, and cloves in a large bowl.\n3. Add molasses and butter, and mix until combined.\n4. Dissolve baking soda in hot water and add to mixture.\n5. Pour batter into a greased loaf pan and bake for 45 minutes or until a toothpick comes out clean.\n6. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Sorcerer's Chocolate Mousse Cake",
        image: Image("strudel36"),
        description: "A decadent chocolate mousse cake that is as enchanting as it is delicious.",
        ingredients: "1 cup flour\n1 cup sugar\n1/2 cup cocoa powder\n1/2 cup butter\n2 eggs\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 cup milk\n1 tsp vanilla extract\nChocolate mousse for filling",
        directions: "1. Preheat oven to 350°F.\n2. Cream together butter and sugar until light and fluffy.\n3. Add eggs one at a time, beating well after each addition.\n4. Mix in dry ingredients alternately with milk.\n5. Pour batter into a greased cake pan and bake for 35-40 minutes or until a toothpick comes out clean.\n6. Let cool before slicing cake in half and filling with chocolate mousse.\n7. Chill before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Gnomish Apple Muffins",
        image: Image("strudel37"),
        description: "Delightful apple muffins that are a gnome favorite for breakfast or a snack.",
        ingredients: "2 cups flour\n1 cup sugar\n1/2 cup butter\n1 cup milk\n2 tsp baking powder\n1 tsp vanilla extract\n1 cup diced apples",
        directions: "1. Preheat oven to 375°F.\n2. Mix together flour, sugar, and baking powder.\n3. Add butter, milk, and vanilla extract, and stir until combined.\n4. Fold in diced apples.\n5. Pour batter into muffin tin and bake for 20 minutes.\n6. Let cool before serving.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Pixie Pancake Stack",
        image: Image("strudel38"),
        description: "A stack of fluffy pancakes topped with fresh berries and a drizzle of honey, perfect for pixies.",
        ingredients: "1 cup flour\n1 tbsp sugar\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 tsp salt\n1 cup buttermilk\n1 egg\n2 tbsp melted butter\nFresh berries and honey for topping",
        directions: "1. In a bowl, whisk together flour, sugar, baking powder, baking soda, and salt.\n2. Add buttermilk, egg, and melted butter, and stir until combined.\n3. Heat a griddle or frying pan over medium heat and lightly grease.\n4. Pour batter onto griddle and cook until bubbles form on the surface.\n5. Flip and cook until golden brown.\n6. Serve with fresh berries and honey.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Fairy Waffle Delight",
        image: Image("strudel39"),
        description: "Delicate waffles topped with fresh fruit and a sprinkle of fairy dust.",
        ingredients: "1 cup flour\n1 tbsp sugar\n1 tsp baking powder\n1/2 tsp baking soda\n1/2 tsp salt\n1 cup milk\n1 egg\n2 tbsp melted butter\nFresh fruit and fairy dust (colored sugar) for topping",
        directions: "1. In a bowl, whisk together flour, sugar, baking powder, baking soda, and salt.\n2. Add milk, egg, and melted butter, and stir until combined.\n3. Preheat waffle iron and lightly grease.\n4. Pour batter into waffle iron and cook until golden brown.\n5. Serve with fresh fruit and a sprinkle of fairy dust.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Druid's Lemon Bars",
        image: Image("strudel40"),
        description: "Tangy and sweet lemon bars infused with the essence of the forest, perfect for a druid's dessert.",
        ingredients: "1 cup flour\n1/4 cup powdered sugar\n1/2 cup butter\n2 cups sugar\n1/4 cup flour\n1/2 tsp baking powder\n4 eggs\n1/2 cup lemon juice\nPowdered sugar for topping",
        directions: "1. Preheat oven to 350°F.\n2. Mix 1 cup flour and 1/4 cup powdered sugar in a bowl.\n3. Cut in butter until mixture resembles coarse crumbs.\n4. Press into the bottom of a greased 9x13 inch baking dish.\n5. Bake for 15-20 minutes or until lightly golden.\n6. In another bowl, whisk together 2 cups sugar, 1/4 cup flour, baking powder, eggs, and lemon juice until smooth.\n7. Pour over baked crust.\n8. Bake for 20-25 minutes or until set.\n9. Let cool before sprinkling with powdered sugar and cutting into bars.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Elven Flatbread",
        image: Image("strudel41"),
        description: "A light and airy flatbread topped with fresh herbs and olive oil, perfect for an elven meal.",
        ingredients: "2 cups flour\n1 cup warm water\n1 tbsp olive oil\n1 tsp salt\n1 tsp dried herbs (rosemary, thyme)\nOlive oil for brushing",
        directions: "1. Preheat oven to 400°F.\n2. Mix flour, warm water, olive oil, and salt in a bowl until a dough forms.\n3. Knead dough on a floured surface until smooth.\n4. Roll out dough and place on a baking sheet.\n5. Brush with olive oil and sprinkle with dried herbs.\n6. Bake for 15-20 minutes or until golden.\n7. Serve warm.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Fairy Citrus Medley",
        image: Image("strudel42"),
        description: "A refreshing mix of citrus fruits, perfect for a fairy's summer day.",
        ingredients: "2 oranges\n2 grapefruits\n2 lemons\n1 lime\n1/4 cup honey\nFresh mint leaves for garnish",
        directions: "1. Peel and segment the oranges, grapefruits, lemons, and lime.\n2. Arrange citrus segments on a platter.\n3. Drizzle with honey.\n4. Garnish with fresh mint leaves.\n5. Serve chilled.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Mystic Berry Tart",
        image: Image("strudel43"),
        description: "A tart filled with an enchanting mix of berries, perfect for a mystical gathering.",
        ingredients: "1 tart crust\n2 cups mixed berries (blueberries, raspberries, blackberries)\n1 cup sugar\n1/2 cup berry jam\nWhipped cream for topping",
        directions: "1. Preheat oven to 375°F.\n2. Roll out tart crust and place in tart pan.\n3. Mix berries, sugar, and berry jam until combined.\n4. Pour berry mixture into crust.\n5. Bake for 30 minutes or until crust is golden and filling is bubbly.\n6. Let cool before serving with whipped cream.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Druid's Herb Bread",
        image: Image("strudel44"),
        description: "A rustic bread infused with fresh herbs, perfect for a druid's meal.",
        ingredients: "3 cups flour\n1 1/2 cups warm water\n1 tbsp sugar\n1 tbsp yeast\n1 tsp salt\n1/4 cup chopped fresh herbs (rosemary, thyme, sage)\n1 tbsp olive oil",
        directions: "1. In a large bowl, dissolve sugar in warm water and add yeast. Let sit for 5 minutes.\n2. Mix in flour, salt, and chopped herbs until a dough forms.\n3. Knead dough on a floured surface until smooth.\n4. Place dough in a greased bowl, cover, and let rise for 1 hour.\n5. Preheat oven to 375°F.\n6. Punch down dough and shape into a loaf.\n7. Place on a baking sheet, brush with olive oil, and bake for 30 minutes or until golden.\n8. Let cool before slicing.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Elven Garden Salad",
        image: Image("strudel45"),
        description: "A refreshing salad with a mix of garden greens, vegetables, and a light vinaigrette, perfect for an elven feast.",
        ingredients: "4 cups mixed greens\n1 cup cherry tomatoes\n1 cucumber, sliced\n1/4 cup red onion, thinly sliced\n1/4 cup feta cheese\n1/4 cup olive oil\n2 tbsp balsamic vinegar\nSalt and pepper to taste",
        directions: "1. In a large bowl, combine mixed greens, cherry tomatoes, cucumber, and red onion.\n2. Sprinkle with feta cheese.\n3. In a small bowl, whisk together olive oil, balsamic vinegar, salt, and pepper.\n4. Drizzle vinaigrette over salad and toss to combine.\n5. Serve immediately.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Pixie Orange Delight",
        image: Image("strudel46"),
        description: "A zesty and sweet orange dessert that captures the essence of pixie magic.",
        ingredients: "4 oranges, peeled and sliced\n1/4 cup honey\n1/4 cup chopped pistachios\nFresh mint leaves for garnish",
        directions: "1. Arrange orange slices on a platter.\n2. Drizzle with honey.\n3. Sprinkle with chopped pistachios.\n4. Garnish with fresh mint leaves.\n5. Serve chilled.",
        datePublished: "2024-05-25"
    ),
    Card(
        name: "Fairy Lemon Tart",
        image: Image("strudel47"),
        description: "A tart with a bright lemon filling, perfect for a fairy's sweet tooth.",
        ingredients: "1 tart crust\n1 cup lemon juice\n1 cup sugar\n1/2 cup butter\n4 eggs\nPowdered sugar for topping",
        directions: "1. Preheat oven to 350°F.\n2. Roll out tart crust and place in tart pan.\n3. In a saucepan, combine lemon juice, sugar, and butter. Cook over medium heat until butter is melted and mixture is hot.\n4. In a separate bowl, whisk eggs. Slowly pour hot lemon mixture into eggs, whisking constantly.\n5. Pour lemon filling into crust.\n6. Bake for 25-30 minutes or until filling is set.\n7. Let cool before sprinkling with powdered sugar.\n8. Serve chilled.",
        datePublished: "2024-05-25"
    )
]
