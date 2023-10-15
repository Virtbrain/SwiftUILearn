//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        print("Button pressed")
                    }, label: {
                        Image(systemName: "gear")
                    })
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        print("Button pressed")
                    }, label: {
                        Image(systemName: "globe.europe.africa")
                    })
                }
            }
        }
    }
}

struct DetailView: View {
    let detail: String
    var body: some View {
        Text(detail)
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
