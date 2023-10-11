//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    var body: some View {
        Button("Click me!") {
            //Action
        }
        .font(.headline)
        .padding()
        .foregroundStyle(.white)
        .background(.blue)
        .cornerRadius(5.0)
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
