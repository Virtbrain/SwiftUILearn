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
            Text("Tab 1")
                .tabItem {
                    Label("Tab 1", systemImage: "1.circle")
                }
                .tag("Tab1")
            
            Text("Tab 2")
                .tabItem {
                    Label("Tab 2", systemImage: "2.circle")
                }
                .tag("Tab2")
        }
    }
}

#Preview {
    SwiftUIView()
}
