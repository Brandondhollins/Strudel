//
//  ContentView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/22/24.
//

import SwiftUI

struct ContentView: View {
    @State var screenSize: CGSize = CGSize(width: 393, height: 852)
    
    var body: some View {
       // title
        ScrollView(.vertical, showsIndicators: false) {
            
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
        .scrollTargetBehavior(.viewAligned)
        .overlay(geometryReader)
    }
    
    var geometryReader: some View {
        GeometryReader { proxy in
            Color.clear
                .onAppear {
                    screenSize = proxy.size
                }
                .onChange(of: proxy.size) { oldValue, newValue in
                    screenSize = newValue
                }
        }
    }
    
//    var title: some View {
//        VStack(alignment: .leading) {
//            Text("Strudel")
//                
//                
//            Text("\(Date().formatted(date: .complete, time: .omitted))")
//                .foregroundStyle(.secondary)
//        }
//        .frame(maxWidth: .infinity, alignment: .leading)
//        .padding(20)
//    }
}

#Preview {
    ContentView()
}
