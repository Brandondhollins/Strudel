//
//  LibraryView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/25/24.
//

import SwiftUI

struct LibraryView: View {
    @State var contentHasScrolled = false
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            
            content
        }
    }
    
    var content: some View {
        ScrollView {
            scrollDetection
            
          RecipeSection
            
            Group {
             
                
          
            
          
            }
            .offset(y: -50)
        }
        .coordinateSpace(name: "scroll")
        .overlay(NavigationBar(title: "Library", contentHasScrolled: $contentHasScrolled))
    }
    
    var RecipeSection: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
             
            }
            .padding(20)
            .padding(.bottom, 40)
        }
        .padding(.top, 60)
    }
    

    

    
    var scrollDetection: some View {
        GeometryReader { proxy in
            let offset = proxy.frame(in: .named("scroll")).minY
            Color.clear.preference(key: ScrollPreferenceKey.self, value: offset)
        }
        .onPreferenceChange(ScrollPreferenceKey.self) { offset in
            withAnimation(.easeInOut) {
                if offset < 0 {
                    contentHasScrolled = true
                } else {
                    contentHasScrolled = false
                }
            }
        }
    }
}
struct LibraryViewPreviews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .environmentObject(Model())
    }
}
