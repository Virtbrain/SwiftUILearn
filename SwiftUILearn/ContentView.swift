//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var value: Double = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $value, in: 0...1)
            Text("Value: \(value, specifier: "%.2f")")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
