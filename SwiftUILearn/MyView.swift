//
//  MyView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 22.09.2023.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var selectedItem = "Item 1"
    
    @State private var details = [
        "Item 1",
        "Item 2",
        "Item 3"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(details, id: \.self) { detail in
                    Button(detail) {
                        selectedItem = detail
                    }
                    .foregroundStyle(.black)
                }
            }
            .navigationTitle(selectedItem)
        }
    }
}

#Preview {
    SwiftUIView()
}
