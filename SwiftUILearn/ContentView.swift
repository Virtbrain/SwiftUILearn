//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button("Red", action: {})
                    .foregroundStyle(.red)
                Button("Green", action: {})
                    .foregroundStyle(.green)
                Button("Blue", action: {})
                    .foregroundStyle(.blue)
            }
        }
        
        Divider()
        
        VStack {
            Button("Red", action: {})
                .foregroundStyle(.red)
            Button("Green", action: {})
                .foregroundStyle(.green)
            Button("Blue", action: {})
                .foregroundStyle(.blue)
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
