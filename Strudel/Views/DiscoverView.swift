//
//  DiscoverView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/25/24.
//

import SwiftUI

struct DiscoverView: View {
    @State var contentHasScrolled = false
    @EnvironmentObject var model: Model
    @State var screenSize: CGSize = CGSize(width: 393, height: 852)
    private var columns: [GridItem] = [
         GridItem(.flexible(), spacing: 40),
         GridItem(.flexible(), spacing: 40)
     ]
    var body: some View {
       
        ScrollView(.vertical, showsIndicators: false) {
            NavigationBar(title: "Discover", contentHasScrolled: $contentHasScrolled)
            LazyVGrid(columns: columns, spacing: 40) {
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

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
            .environmentObject(Model())
    }
}
