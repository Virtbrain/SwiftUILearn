//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        let name = "Sarah"
        Text("Hello, \(name)! \nThanks for using our app. \n\nWe hope you have a great experience.")
            .font(.custom("Papyrus", size: 24))
            .lineLimit(5)
            .multilineTextAlignment(.center)
            .foregroundStyle(.purple)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
