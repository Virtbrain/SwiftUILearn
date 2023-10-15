//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    
    let sectionsAndItems: [String: [Item]] = [
        "Section 1" : [
            Item(name: "Item 1"),
            Item(name: "Item 2")
        ],
        "Sections 2" : [
            Item(name: "Item 3"),
            Item(name: "Item 4")
        ]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Array(sectionsAndItems.keys), id: \.self) { section in
                    Section {
                        ForEach(sectionsAndItems[section] ?? []) { item in
                            Text(item.name)
                        }
                    } header: {
                        Text(section)
                    }
                }
            }
            .navigationTitle("My List")
            .toolbar(content: {
                ToolbarItem {
                    Button {
                        print(sectionsAndItems.keys)
                    } label: {
                        Image(systemName: "globe.central.south.asia.fill")
                    }

                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
