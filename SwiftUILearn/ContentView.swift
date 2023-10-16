//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var colorChoise = Color.white
    
    var body: some View {
        VStack {
           ColorPicker("Choose your color", selection: $colorChoise)
                .padding()
            
            Text("Your choise:")
                .font(.title)
            
            Rectangle()
                .fill(colorChoise)
                .frame(width: 100, height: 100)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
