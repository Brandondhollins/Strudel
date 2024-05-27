//
//  HomeView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/25/24.
//

import SwiftUI

struct HomeView: View {
    @State var screenSize: CGSize = CGSize(width: 393, height: 852)
    var columns = [GridItem(.adaptive(minimum: 300), spacing: 20)]
    
    @State var show = false
    @State var showStatusBar = true
    @State var showRecipe = false
    @State var selectedRecipe: Card = cards[0]
    @State var contentHasScrolled = false
    
    @EnvironmentObject var model: Model
    @Namespace var namespace
    var body: some View {
//        NavigationBar(title: "Home", contentHasScrolled: $contentHasScrolled)
        ScrollView(.vertical, showsIndicators: false) {
            NavigationBar(title: "Home", contentHasScrolled: $contentHasScrolled)
            VStack(spacing: 60) {
                ForEach(cards) { card in
                    CardView(card: card, screenSize: $screenSize)
                        .scrollTransition { content, phase in
                            content.scaleEffect(phase.isIdentity ? 1 : 0.8)
                                .rotationEffect(.degrees(phase.isIdentity ? 0 : 0))
                                .rotation3DEffect(.degrees(phase.isIdentity ? 0 : 0), axis: (x: 0, y: 1, z: 2))
                                .blur(radius: phase.isIdentity ? 0 : 60)
                                .offset(x: phase.isIdentity ? 0 : 0)
                        }
                }
            }
            .scrollTargetLayout()
            .padding(.bottom, 100)
        }
        
//        .coordinateSpace(name: "scroll")
//        .overlay(NavigationBar(title: "Home", contentHasScrolled: $contentHasScrolled))
    
    }
    
    
    
    var scrollDetection: some View {
        GeometryReader { proxy in
            let offset = proxy.frame(in: .named("scroll")).minY
            Color.clear.preference(key: ScrollPreferenceKey.self, value: offset)
        }
        .onPreferenceChange(ScrollPreferenceKey.self) { value in
            withAnimation(.easeInOut) {
                if value < 0 {
                    contentHasScrolled = true
                } else {
                    contentHasScrolled = false
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(Model())
    }
}
