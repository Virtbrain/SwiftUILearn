//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        Text("Hello, world!")
            .frame(width: 200, height: 50)
            .background(
                Image("background01")
                    .resizable(resizingMode: .tile)
                    .opacity(0.25)
            )
            .fontWeight(.heavy)
            .border(.black, width: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
