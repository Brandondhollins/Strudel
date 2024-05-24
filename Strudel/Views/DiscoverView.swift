//
//  DiscoverView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/22/24.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
            }
            .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
