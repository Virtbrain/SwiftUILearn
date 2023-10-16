//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var progressValue = 0.0
    
    var body: some View {
        VStack {
            ProgressView(value: progressValue)
                .padding()
            
            Button("Start Download") {
                for i in 1...100 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) / 10.0) {
                        progressValue = Double(i) / 100.0
                    }
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
