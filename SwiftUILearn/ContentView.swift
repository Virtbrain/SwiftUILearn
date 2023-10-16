//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var colorChoise = Color.white
    
    var body: some View {
        TabView {
            Text("Tab 1's a star!")
                .tabItem {
                    Image(systemName: "star")
                    Text("Tab 1")
                }.tag(1)
            
            Text("Show the love for Tab 2!")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Tab 2")
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
