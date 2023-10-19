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
            Text("Firts Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }.tag(1)
                .toolbarBackground(.hidden, for: .tabBar)
            
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }.tag(2)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.orange.opacity(0.8), for: .tabBar)
            
            Text("Third Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("T hird")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
