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
        VStack{
            TextField("Enter your cell number", text: $cell)
                .multilineTextAlignment(.center)
                .keyboardType(.phonePad)
                .padding()
            
            TextField("Enter ypur name", text: $name)
                .keyboardType(.default)
                .multilineTextAlignment(.center)
                .submitLabel(.done)
                .onSubmit {
                    print("Name entered: \(name)")
                }
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
