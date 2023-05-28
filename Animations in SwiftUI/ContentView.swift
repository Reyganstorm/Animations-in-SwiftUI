//
//  ContentView.swift
//  Animations in SwiftUI
//
//  Created by Руслан Штыбаев on 28.05.2023.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State var color = Color.green
    @State var currentOffset  = 0
    
    var body: some View {
        ZStack {
            Circle()
                .scaleEffect(0.5)
                .foregroundColor(colors[currentOffset])
                .animation(.default, value: self.currentOffset)
                .offset(x: offsets[currentOffset].x,
                        y: offsets[currentOffset].y)

        }
        .onAppear {
            for index in 1 ..< offsets.count {
                delay(seconds: Double(index)) {
                    self.currentOffset = index
                }
            }
        }
        
    }
    
    func delay(seconds: TimeInterval, block: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: block)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let offsets: [CGPoint] = [
  CGPoint(x: 0, y: 0),
  CGPoint(x: 100, y: 0),
  CGPoint(x: 100, y: -100),
  CGPoint(x: -100, y: -100),
  CGPoint(x: -100, y: 0),
  CGPoint(x: 0, y: 0)
]

let colors: [Color] = [
  Color.green,
  Color.blue,
  Color.red,
  Color.orange,
  Color.yellow,
  Color.green
]
