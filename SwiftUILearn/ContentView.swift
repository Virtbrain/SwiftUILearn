//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Username", text: $username)
                    TextField("Email", text: $email)
                }
                Section(header: Text("Login Credetials")) {
                    SecureField("Password", text: $password)
                }
                
                Section {
                    Button(action: register, label: {
                        Text("Register")
                    })
                }
            }
            .navigationTitle("Registration Form")
        }
    }
    
    func register() {
        print("Register")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
