//
//  CardView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/25/24.
//

import SwiftUI


struct CardView: View {
    var card: Card = cards[1]
    @Binding var screenSize: CGSize
    @State var isTapped = false
    @State var time = Date.now
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var isActive = false
    @State var isDownloading = false
    let startDate = Date()
    @State var hasSimpleWave = false
    @State var hasComplexWave = false
    @State var hasPattern = false
    @State var hasNoise = false
    @State var hasEmboss = false
    @State var isPixellated = false
    @State var number: Float = 0
    let numberTimer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var isIncrementing = true
    
    struct AnimationValues {
        var position = CGPoint(x: 0, y: 0)
        var scale = 1.0
        var opacity = 0.0
    }
    
    var body: some View {
        TimelineView(.animation) { context in
            layout
                .frame(maxWidth: screenSize.width)
                .dynamicTypeSize(.xSmall ... .xLarge)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.vertical, 10)
                .background(.blue.opacity(0.001))
               
               
        }
    }
    
    
    var layout: some View {
        ZStack {
            TimelineView(.animation) { context in
                card.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: isTapped ? screenSize.height - 280 : 500)
                    .frame(width: isTapped ? screenSize.width : screenSize.width - 40)
                
               
             
                    .onReceive(numberTimer, perform: { _ in
                        guard isPixellated || hasEmboss else { return }
                        if isIncrementing {
                            number += 1
                        } else {
                            number += -1
                        }
                        if number >= 10 {
                            isIncrementing = false
                        }
                        if number <= 0 {
                            isIncrementing = true
                        }
                    })
                    .overlay(
                        Text(card.name)
                            .font(.custom("CheeeDemo-Wowie", size: isTapped ? 72 : 24))
                            .foregroundStyle(.white)
                            .fontWeight(isTapped ? .heavy : .heavy)
                            .padding(.top)
                            .shadow(color: .black, radius: isTapped ? 40 : 44, y: 0)
                            .frame(maxHeight: .infinity, alignment: isTapped ? .center : .top)
                    )
                    .cornerRadius(isTapped ? 40 : 20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(linearGradient)
                            .opacity(isTapped ? 0 : 1)
                    )
                    .offset(y: isTapped ? -200 : 0)
                    .phaseAnimator([1, 1], trigger: isTapped, content: { content, phase in
                        content.scaleEffect(phase == 1 ? 1 : 1)
                    })
                    .onTapGesture {
                                           withAnimation(.bouncy) {
                                               isTapped.toggle()
                                           }
                                       }
                               }
                               
                  
            
            
    
            
            content
                .padding(20.0)
                .background(hasSimpleWave || hasComplexWave ? AnyView(Color(.secondarySystemBackground)) : AnyView(Color.clear.background(.regularMaterial)))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(linearGradient)
                )
                .cornerRadius(20.0)
                .padding(40)
                .background(.blue.opacity(0.001))
                .offset(y: isTapped ? 200 : 220)
                .phaseAnimator([1, 1.1], trigger: isTapped) {  content, phase in
                    content.scaleEffect(phase)
                } animation: { phase in
                    switch phase {
                    case 1: .bouncy
                    case 1.1: .easeOut(duration: 1)
                    default: .easeInOut
                    }
                }
          
             
        }
    }
    
    var linearGradient: LinearGradient {
        LinearGradient(colors: [.clear, .primary.opacity(0.3), .clear], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    var content: some View {
        VStack(alignment: .center) {
            Text(card.description)
                .font(.subheadline)
            HStack(spacing: 8.0) {
                VStack(alignment: .leading) {
                    Text("Prep Time")
                        .foregroundColor(.secondary)
                    Text("4 Hours")
                }
                .font(.subheadline)
                .fontWeight(.semibold)
                
                Divider()

                VStack(alignment: .leading) {
                    Text("Experience")
                        .foregroundColor(.secondary)
                    Text("400")
                }
                .font(.subheadline)
                .fontWeight(.semibold)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Skill Level")
                        .foregroundColor(.secondary)
                    Text("Jedi ")
                }
                .font(.subheadline)
                .fontWeight(.semibold)
            }
            .frame(height: 44.0)
            
            

                
            
            
        }
    }
    
   
      
        
    
}

#Preview {
    CardView(screenSize: .constant(CGSize(width: 393, height: 852)))
}
