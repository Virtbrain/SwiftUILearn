//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

enum Operations: String {
    case plus = "+"
    case minus = "-"
}

struct MathButton: View {
    let operation: Operations
    let valueOperation: Double
    let competion: (Operations, Double) -> Void

    var body: some View {
        Button(action: {
            competion(operation, valueOperation)
        }, label: {
            Text("\(operation.rawValue) 0.1")
                .bold()
                .padding()
                .font(.title)
        })
        .background(Color.orange)
        .foregroundStyle(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12.0))
        .shadow(color: .black.opacity(0.3), radius: 5, x: 3, y: 5)
        .padding()
    }
}

struct ContentView: View {
    @State private var progress = 0.5
    
    func mathOperation(operation: Operations, value: Double) {
        switch operation {
        case .plus:
            if progress < 0.9 {
                progress += value
            } else {
                progress = 1.0
            }
        case .minus:
            if progress > 0.1 {
                progress -= value
            } else {
                progress = 0.0
            }
        }
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress, total: 1.0)
                .progressViewStyle(.linear)
                .padding()
                
            HStack {
                MathButton(operation: .plus, valueOperation: 0.1, competion: mathOperation)
                
                Spacer()
                
                MathButton(operation: .minus, valueOperation: 0.1, competion: mathOperation)
                
            }
            
            Text("The progress now is: \(String(format: "%.2f", progress))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
