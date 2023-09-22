//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Hello, \nCircular View!")
            .multilineTextAlignment(.center)
            .padding(50)
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
