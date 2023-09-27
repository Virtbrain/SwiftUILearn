//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Hello, world!")
            .font(.custom("Papyrus", size: 24))
            .foregroundStyle(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
