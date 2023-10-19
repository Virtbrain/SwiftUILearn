//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab:Int = 1
    
    var body: some View {
        VStack {
            Button("Switch to second tab") {
                selectedTab = 1
            }
            .padding()
            
            TabView(selection: $selectedTab) {
                Text("First Tab")
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Tab 1")
                    }.tag(1)
                Text("Second Tab")
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Tab 2")
                    }.tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
