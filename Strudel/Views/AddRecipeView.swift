//
//  AddRecipeView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/22/24.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }

                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }

                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }

                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }

                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}
#Preview {
    AddRecipeView()
}
