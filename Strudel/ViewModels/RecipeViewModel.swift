//
//  RecipeViewModel.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/22/24.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []

    init() {
        recipes = Recipe.all
    }
}
