//
//  CategoryView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/22/24.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    // Computed property
    var recipes: [Recipe] {
        return Recipe.all.filter{ $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
    }
}
