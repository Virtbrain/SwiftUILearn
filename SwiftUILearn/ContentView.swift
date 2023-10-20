//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct IndeteminateProgressView: View {
    @State private var isLoading = true
    
    var body: some View {
        VStack {
            ProgressView("Loading...")
                .progressViewStyle(.circular)
                .scaleEffect(2.0, anchor: .center)
        }
        .onAppear {
            startAnimating()
        }
    }
    
    func startAnimating() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(Animation.linear(duration: 1.5).repeatForever()) {
                isLoading = true
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        IndeteminateProgressView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
