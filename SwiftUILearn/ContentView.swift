//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 0
}
struct ContentView: View {
    var body: some View {
        GameView()
            .environmentObject(GameSettings())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
