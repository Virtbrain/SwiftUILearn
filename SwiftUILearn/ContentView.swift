//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

enum Theme {
    case light, dark
}

struct ThemeKey: EnvironmentKey {
    static let defaultValue: Theme = .light
}

extension EnvironmentValues {
    var theme: Theme {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

struct ThemedView: View {
    @Environment(\.theme) var theme: Theme
    
    var body: some View {
        VStack {
            if theme == .light {
                Text("Light Theme")
                    .foregroundStyle(.black)
                    .background(.white)
            } else {
                Text("Dark Theme")
                    .foregroundStyle(.white)
                    .background(.black)
            }
        }
        .padding()
    }
}


struct ContentView: View {
    @State var theme: Theme = .light
    
    var body: some View {
        VStack {
            Button("Switch Theme") {
                switch theme {
                case .light:
                    theme = .dark
                case .dark:
                    theme = .light
                }
            }
            .background(.blue)
            .padding()
            .foregroundStyle(.white)
            .font(.title)
            
            ThemedView()
        }
        .theme(theme)
    }
}

extension View {
    func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
