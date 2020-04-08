//
//  ContentView.swift
//  SwiftUI_Animation_1
//
//  Created by Ivan Ivanov on 08.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Button("Hello, World!") {
                }
                .frame(width: 400, height: 60, alignment: .center)
            }
            .scaleEffect(self.isPressed ? 2 : 1)
            .background(Color.green)
            .cornerRadius(10)
            .offset(y: self.isPressed ? -200 : -450)
            .animation(.interpolatingSpring(mass: 2, stiffness: 100, damping: 10, initialVelocity: 0))
            
            Button("Press Me"){
                self.isPressed.toggle()
            }
            HStack {
                Text(self.isPressed ? "UP" : "DOWN")
                Image(systemName: "chevron.up.square")
                    .rotationEffect(.degrees(self.isPressed ? 0 : 180))
                    .animation(.default)
            }
            
            HStack {
                Text("🌝")
                    .font(.custom("Arial", size: 100))
                    .offset(x: self.isPressed ?  UIScreen.main.bounds.width - 120 : 0 )
//                    .rotationEffect(.degrees(self.isPressed ? 0 : 90))
                    .animation(.interpolatingSpring(mass: 5, stiffness: 100, damping: 10, initialVelocity: 0))
                
                
                Spacer()
            }
//            HStack {
//                if isPressed {
//                    Text("Green")
//                        .background(Color.green)
//                    Image(systemName: "chevron.up.square")
//                } else {
//                    Text("Red")
//                        .background(Color.red)
//                    Image(systemName: "chevron.down.square")
//                }
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
