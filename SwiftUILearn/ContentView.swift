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
            Image(systemName: "pawprint.circle.fill")
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .padding()
            
            HStack {
                Image(systemName: "bell")
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                    .symbolVariant(.slash)
                
                Image(systemName: "bell")
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                    .symbolVariant(.square)
                
                Image(systemName: "bell")
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                    .symbolVariant(.fill.slash)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
