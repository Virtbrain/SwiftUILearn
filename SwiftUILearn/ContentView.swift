//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("ProgressView in the NavigationStrack!")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    ProgressView()
                        .tint(Color.green)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
