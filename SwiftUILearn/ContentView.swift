//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isSwitchedOn = false
    
    var body: some View {
        VStack{
            Toggle(isOn: $isSwitchedOn, label: {
                Text("Turn me on or off")
            })
                .padding(40)

            if isSwitchedOn {
                Text("The switch is on!")
                    .foregroundStyle(.blue)
            } else {
                Text("The switch is off!")
                    .foregroundStyle(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
