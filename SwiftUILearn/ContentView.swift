//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var password = ""
    var body: some View {
        SecureField("Enter your password", text: $password)
            .textContentType(.password)
            .padding()
            .background(RoundedRectangle(cornerRadius: 5).stroke())
            .multilineTextAlignment(.center)
            .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
