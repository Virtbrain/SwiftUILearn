//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI


struct ContentView: View {
    @AppStorage("username") var username: String = "Anonymus"
    
    var body: some View {
        VStack {
            Text("Welcome, \(username)!")
                .padding()
                .font(.title)
            
            Button(action: {
                print(username)
            }, label: {
                Text("Log in")
                    .padding()
            })
            .background(.blue)
            .font(.title)
            .foregroundStyle(.white)
            .clipShape(.buttonBorder)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
