//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var cell = ""
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("Cropping With Clipped")
                .font(.title)
            Image("CaneCorso")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
                .border(.black, width: 2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
