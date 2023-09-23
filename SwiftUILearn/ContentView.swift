//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var username = "Anonymus"
}

struct ContentView: View {
    @ObservedObject var settings = UserSettings()
    var body: some View {
        VStack{
            Text("Hello, \(settings.username)!")
            Button("Change Username") {
                settings.username = "John Doe"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
