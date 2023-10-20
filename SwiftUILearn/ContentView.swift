//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct SpinnerView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .tint(.blue)
            .scaleEffect(2.0, anchor: .center)
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    //Simulates delay
                    //perform transitition to the next view here
                }
            }
    }
}

struct ContentView: View {
    
    var body: some View {
        SpinnerView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
