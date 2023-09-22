//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack{
                Text("Welcome to my app!")
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                }
            }
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    print("Settings tapped")
                }, label: {
                    Text("Settings")
                })
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the detail view!")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
