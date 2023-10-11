//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

private var tapCount = 0

struct ContentView: View {
    @State private var isButtonDisabled = true
    
    var body: some View {
        VStack(spacing: 25) {
            Button(action: {
                increment()
                print("Button was tapped \(tapCount)")
            }, label: {
                Label("Show Some Love!", systemImage: "heart.fill")
            })
            .padding()
            .background(isButtonDisabled ? .gray : .yellow)
            .foregroundStyle(isButtonDisabled ? Color.white : Color.black)
            .font(.title)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .disabled(isButtonDisabled)
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
            
            Button("\(isButtonDisabled ? "Enable" : "Disable") button") {
                isButtonDisabled.toggle()
            }
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .font(.title)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
        }
       
    }
    
    private func increment() {
        tapCount += 1
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
