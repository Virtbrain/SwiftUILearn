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
            List {
                NavigationLink("Item 1", value: "Item 1 Detail View")
                NavigationLink("Item 2", value: "Item 2 Detail View")
                NavigationLink("Item 3", value: "Item 3 Detail View")
            }
            .navigationTitle("List with Navigation")
            .navigationDestination(for: String.self) { detail in
                DetailView(detail: detail)
            }
        }
    }
}

struct DetailView: View {
    let detail: String
    var body: some View {
        Text(detail)
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
