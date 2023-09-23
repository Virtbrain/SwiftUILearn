//
//  MyView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 22.09.2023.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var settings: GameSettings
    var body: some View {
        VStack {
            Text("Score: \(settings.score)")
            Button("Increment Score") {
                settings.score += 1
            }
        }
    }
}

