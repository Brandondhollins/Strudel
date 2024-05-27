//
//  FilterView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/27/24.
//

import SwiftUI

struct FilterView: View {
    @State var name = ""
    @State var showRecipe = false
    @State var selectedRecipe = cards[0]
    @Namespace var namespace
    
    var body: some View {
        NavigationView {
            VStack {
                content
                Spacer()
            }
        }
        .searchable(text: $name) {
            
        }
    }
    
    var content: some View {
        VStack {
            
            
        }
        .padding(20)
        .backgroundStyle(cornerRadius: 30)
        .padding(20)
        .navigationTitle("Search")
      
        
        
    }
    
}
  


    struct FilterView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView()
            
        }
        
        
    }

