//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct MoonPhaseView: View {
    var phase: String
    var image: Image
    
    var body: some View {
        ViewThatFits {
            HStack {
                image
                    .resizable()
                    .scaledToFit()
                Text(phase)
            }
            image
                .resizable()
                .scaledToFit()
        }
        .padding()
    }
}

struct ContentView: View {
    var body: some View {
        MoonPhaseView(phase: "Waxing Crescent", image: Image(systemName: "moonphase.waxing.crescent"))
            .frame(maxWidth: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
