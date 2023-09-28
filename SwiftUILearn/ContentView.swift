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
            Text("Welcome to my app!")
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .padding()
            
            Text("Explore the world")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.green)
                .padding()
            
            Text("Discover new places and experiences")
                .font(.headline)
                .padding()
            
            Text("Get inspired")
                .font(.subheadline)
                .foregroundStyle(.purple)
                .padding()
            
            Text("Join our community")
                .font(.callout)
                .foregroundStyle(.orange)
                .padding()
            
            Text("Shara your adventures with us")
                .font(.footnote)
                .foregroundStyle(.gray)
                .padding()

            Text("Follow us on social media")
                .font(.caption)
                .foregroundStyle(.black)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
