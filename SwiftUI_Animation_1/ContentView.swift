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
            Button("Press Me"){
                self.isPressed.toggle()
            }
            if isPressed {
                Text("Green")
                    .background(Color.green)
            } else {
                Text("Red")
                    .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
