//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var age = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                } header: {
                    Text("Personal Information")
                }
                
                Section {
                    TextField("Age", text: $age)
                } header: {
                    Text("Additional Information")
                }
            }
            .navigationTitle("Registration Form")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
