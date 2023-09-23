//
//  MyView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 22.09.2023.
//

import SwiftUI

struct MyView: View {
    @State private var selectedColor = Color.red
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100, alignment: .center)
            
            ColorPickerView(selectedColor: $selectedColor)
        }
        .padding()
    }
}

struct ColorPickerView: View {
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .orange]
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    .fill(color)
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}

#Preview {
    MyView()
}
