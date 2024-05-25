//
//  RecipeModel.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/22/24.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case pie = "Pie"
    case tart = "Tart"
    case cake = "Cake"
    case cookie = "Cookie"
    case pastry = "Pastry"
    case bread = "Bread"
    case muffin = "Muffin"
    case dessert = "Dessert"
    case snack = "Snack"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
}

var cards = [
        Recipe(
            name: "Berry Merry Tart",
            image: "s-1",
            description: "A delightful slice of holiday cheer! This tart combines the tangy taste of berries with a creamy custard base, all nestled in a flaky, buttery crust.",
            ingredients: "1 pie crust\n2 cups mixed berries\n1 cup sugar\n1 cup cream cheese\n1 tsp vanilla extract",
            directions: "1. Preheat oven to 375°F.\n2. Roll out pie crust and place in tart pan.\n3. Mix cream cheese, sugar, and vanilla until smooth.\n4. Spread cream cheese mixture over crust.\n5. Top with berries.\n6. Bake for 30 minutes or until crust is golden.\n7. Let cool and enjoy!",
            category: "Tart",
            datePublished: "2022-12-01"
        ),
        Recipe(
            name: "Sandwich Spectacular",
            image: "s-2",
            description: "A medley of magnificent sandwiches, perfect for any time of the day. These delightful bites range from savory to sweet, satisfying every craving.",
            ingredients: "Variety of breads\nAssorted fillings: meats, cheeses, veggies\nCondiments and spreads",
            directions: "1. Choose your favorite bread.\n2. Layer with a variety of fillings.\n3. Add condiments and spreads to taste.\n4. Serve and enjoy!",
            category: "Snack",
            datePublished: "2023-01-10"
        ),
        Recipe(
            name: "Cinnamon Roll Heaven",
            image: "s-3",
            description: "Fluffy, sweet, and irresistibly gooey cinnamon rolls, perfect for a cozy morning treat. Topped with a luscious cream cheese frosting.",
            ingredients: "Dough:\n4 cups flour\n1 cup warm milk\n2 eggs\n1/3 cup melted butter\n1/2 cup sugar\n2 1/4 tsp yeast\nFilling:\n1 cup brown sugar\n2 1/2 tbsp cinnamon\n1/3 cup softened butter\nFrosting:\n4 oz cream cheese\n1/4 cup softened butter\n1 1/2 cups powdered sugar\n1 tsp vanilla extract",
            directions: "1. Combine warm milk and yeast. Let sit until frothy.\n2. Mix in sugar, butter, eggs, and flour. Knead into a dough.\n3. Let dough rise for 1 hour.\n4. Roll out dough, spread with butter, sprinkle with sugar and cinnamon.\n5. Roll up and cut into rolls.\n6. Bake at 350°F for 25-30 minutes.\n7. Mix frosting ingredients and spread on warm rolls.\n8. Enjoy!",
            category: "Pastry",
            datePublished: "2023-02-14"
        ),
        Recipe(
            name: "Chocolate Drizzled Waffles",
            image: "s-4",
            description: "Crispy waffles topped with a decadent drizzle of chocolate and a sprinkle of powdered sugar. Perfect for a special breakfast or dessert.",
            ingredients: "2 cups flour\n2 tbsp sugar\n1 tbsp baking powder\n1/2 tsp salt\n2 eggs\n1 3/4 cups milk\n1/2 cup melted butter\n1 tsp vanilla extract\n1/2 cup chocolate chips, melted\nPowdered sugar for dusting",
            directions: "1. Preheat waffle iron.\n2. Mix flour, sugar, baking powder, and salt in a bowl.\n3. In another bowl, whisk eggs, milk, butter, and vanilla.\n4. Combine wet and dry ingredients.\n5. Pour batter into waffle iron and cook until golden brown.\n6. Drizzle with melted chocolate and dust with powdered sugar.\n7. Serve warm and enjoy!",
            category: "Dessert",
            datePublished: "2023-03-25"
        ),
        Recipe(
            name: "Blueberry Bliss Pancakes",
            image: "s-5",
            description: "Fluffy pancakes loaded with fresh blueberries and topped with a warm blueberry syrup. A perfect way to start your day!",
            ingredients: "Pancakes:\n2 cups flour\n2 tbsp sugar\n2 tsp baking powder\n1/2 tsp baking soda\n1/2 tsp salt\n2 eggs\n2 cups buttermilk\n1/4 cup melted butter\n1 cup fresh blueberries\nSyrup:\n1 cup fresh blueberries\n1/2 cup sugar\n1/4 cup water\n1 tbsp lemon juice",
            directions: "1. In a bowl, mix flour, sugar, baking powder, baking soda, and salt.\n2. In another bowl, whisk eggs, buttermilk, and melted butter.\n3. Combine wet and dry ingredients, fold in blueberries.\n4. Cook pancakes on a hot griddle until bubbles form and edges are set.\n5. For syrup, cook blueberries, sugar, water, and lemon juice in a saucepan until thickened.\n6. Serve pancakes with warm syrup and enjoy!",
            category: "Breakfast",
            datePublished: "2023-04-10"
        ),
        Recipe(
            name: "Honey Drizzled Belgian Waffles",
            image: "s-6",
            description: "Crispy Belgian waffles topped with a generous drizzle of honey. Simple, yet incredibly delicious, perfect for any time of day.",
            ingredients: "2 cups flour\n2 tbsp sugar\n1 tbsp baking powder\n1/2 tsp salt\n2 eggs\n1 3/4 cups milk\n1/2 cup melted butter\n1 tsp vanilla extract\nHoney for drizzling",
            directions: "1. Preheat waffle iron.\n2. Mix flour, sugar, baking powder, and salt in a bowl.\n3. In another bowl, whisk eggs, milk, butter, and vanilla.\n4. Combine wet and dry ingredients.\n5. Pour batter into waffle iron and cook until golden brown.\n6. Drizzle with honey and serve warm.\n7. Enjoy!",
            category: "Pastry",
            datePublished: "2023-05-05"
        ),
        Recipe(
            name: "Powdered Sugar Mini Donuts",
            image: "s-7",
            description: "Adorable bite-sized donuts coated in a generous layer of powdered sugar. Perfect for a quick snack or a sweet treat on the go.",
            ingredients: "1 cup flour\n1/4 cup sugar\n1 tsp baking powder\n1/4 tsp salt\n1/2 cup milk\n1 egg\n1 tbsp melted butter\n1 tsp vanilla extract\nPowdered sugar for coating",
            directions: "1. Preheat donut maker or oven to 375°F.\n2. Mix flour, sugar, baking powder, and salt in a bowl.\n3. In another bowl, whisk milk, egg, butter, and vanilla.\n4. Combine wet and dry ingredients.\n5. Fill donut maker or donut pan with batter.\n6. Cook until golden brown.\n7. Roll warm donuts in powdered sugar.\n8. Enjoy!",
            category: "Snack",
            datePublished: "2023-06-20"
        )
    ]

