//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var progress: CGFloat = 0.0
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack(alignment: .leading, content: {
            Rectangle()
                .frame(width: 300, height: 20)
                .opacity(0.3)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .foregroundStyle(Color.gray)
            
            Rectangle()
                .frame(width: progress * 300, height: 20)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .foregroundStyle(Color.green)
                .animation(.easeInOut, value: progress)
        })
        .onReceive(timer) {_ in
            if progress < 1.0 {
                progress += 0.01
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
