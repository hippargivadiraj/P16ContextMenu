//
//  ContentView.swift
//  P16ContextMenu
//
//  Created by Vadiraj Hippargi on 8/31/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var backgroundColor = Color.red
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .background(backgroundColor)
            Text("ChangeColor")
                .padding()
                .contextMenu {
                    Button( action: {
                        self.backgroundColor = .red
                    }){
                        Text("Red")
                    }
                    Button( action: {
                        self.backgroundColor = .green
                    }){
                        Text("Green")
                    }
                    
                    Button( action: {
                        self.backgroundColor = .blue
                    }){
                        Text("Blue")
                    }
                    
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
