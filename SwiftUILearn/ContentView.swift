//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    var animals = ["Lion", "Tiger", "Elephant", "Leopard"]
    var plants = ["rose", "Lily", "Tulip", "Orchid"]
    
    var body: some View {
        TabView {
            List(animals, id: \.self) { animal in
                Text(animal)
            }
            .tabItem {
                Image(systemName: "hare")
                Text("Animals")
            }
            
            List(plants, id: \.self) { plant in
                Text(plant)
            }
            .tabItem {
                Image(systemName: "leaf")
                Text("Plants")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
