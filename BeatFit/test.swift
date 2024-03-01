//
//  test.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/27/24.
//

import Foundation
import SwiftUI

struct CircleAnimation: AnimatableModifier {
    var angle: Float
    var radius: Float

    var animatableData: Float {
        get { angle }
        set { angle = newValue }
    }

    func body(content: Content) -> some View {
        let x = CGFloat(400 + radius * cos(angle))
        let y = CGFloat(400 - radius * sin(angle))
        content.position(x: x, y: y)
    }
}

struct ContentView: View {
    @State var angle: Float = Float.pi*2
    
    let radius: Float = 100
    
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(.black, lineWidth: 2)
                .foregroundColor(.clear)
                .frame(width: CGFloat(2*radius), height: CGFloat(2*radius))
                .position(x: 400, y: 400)
            
            ZStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                Text("Hello!")
                    .offset(x: 80)
                    .font(.system(size: 24))
            }
            .modifier(CircleAnimation(angle: angle, radius: radius))
        }
        .frame(width: 800, height: 800)
        .background(.white)
        .onAppear {
            withAnimation(.easeInOut(duration: 2)) { // withAnimation tells that states modified in closure are animated
                angle = -Float.pi*2
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
