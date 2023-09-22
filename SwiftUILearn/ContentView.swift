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
        VStack{
            Text("Hello, shadows!")
                .font(.largeTitle)
                .padding()
                .background(.white)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Circle()
                .fill(.blue)
                .shadow(color: .purple, radius: 10, x: 0, y: 0)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
