//
//  MyView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 22.09.2023.
//

import SwiftUI

struct SwiftUIView: View {
    @SceneStorage("selectedTab") var selectedTab: String?
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Your View Here")
                .tabItem {
                    Label("Home", systemImage: "person")
                        .symbolVariant(.none)
                }
                .tag("Tab1")
            
            Text("Your Activity View Here")
                .tabItem {
                    Label("Activity", systemImage: "bell")
                        .symbolVariant(.none)
                }
                .tag("Tab2")
        }
    }
}

#Preview {
    SwiftUIView()
}
