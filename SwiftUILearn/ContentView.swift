//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct Park: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    @State private var searchText = ""
    
    let myView = SwiftUIView()

    let parks: [Park] = [
        Park(name: "Yosemite National Park"),
        Park(name: "Redwood National snd State Parks"),
        Park(name: "Sequoia National Park"),
        Park(name: "Pinnacles National Park"),
        Park(name: "Joshua Tree National Park"),
        Park(name: "Death Valley National Park"),
        Park(name: "Channel Islands National Park"),
        Park(name: "Kings Canyon National Park"),
        Park(name: "Lassen Volcaninc National Park"),
        Park(name: "Point Reyes National Seashore")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(parks.filter{ searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText) }) { park in
                    Text(park.name)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        myView
                    } label: {
                        Image(systemName: "sun.max.fill")
                    }


                }
            })
            .navigationTitle("California Parks")
            .searchable(text: $searchText)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
