//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ModalView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("this is a modal view.")
            .padding()
        Button("Dissmiss") {
            isPresented = false
        }
    }
}

struct ContentView: View {
    @State private var isPresented = false
    @State private var selectedTab:Int = 1
    
    var body: some View {
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
        .onChange(of: selectedTab) { _, _ in
            isPresented = true
        }
        .sheet(isPresented: $isPresented) {
            ModalView(isPresented: $isPresented)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
