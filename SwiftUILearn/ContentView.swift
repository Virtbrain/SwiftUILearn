//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selection) {
                Text("Option 1").tag(0)
                Text("Option 2").tag(1)
                Text("Option 3").tag(2)
            } label: {
                Text("Picker")
            }
            .pickerStyle(.segmented)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
