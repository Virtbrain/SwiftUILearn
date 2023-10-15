//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var quantity: Int = 1
    
    var body: some View {
        VStack(spacing: 10) {
            Text("How many packets of magic beans?")
            Stepper(value: $quantity, in: 1...10) {
                Text("\(quantity)")
            }
            .padding(.horizontal, 100)
        }
        .padding(30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
