//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ScientistDetailView: View {
    let name: String
    
    var body: some View {
        VStack {
            Text(name)
                .font(.title)
                .padding()
            Text("More details about \(name) would be presented here.")
                .font(.body)
                .foregroundStyle(.gray)
        }
        .navigationTitle(name)
    }
}

struct ContentView: View {
    let scientists = ["Albert Einstein", "Iisac Newton", "Marie Curie", "Charles Darwin", "Nikola Tesla"]
    
    var body: some View {
        NavigationStack{
            List(scientists, id: \.self) { scientist in
                NavigationLink(scientist, value: scientist)
            }
            .navigationDestination(for: String.self) { scientistName in
                ScientistDetailView(name: scientistName)
            }
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
