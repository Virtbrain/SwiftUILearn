//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

let quote = """
**"Be yourself;** everyone else is _already taken._"
- **Oscar Wilde**
"""

let attributedQuote = try! AttributedString(markdown: quote)

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world!")
                .fontWeight(.semibold)
                .italic()
                .underline()
                .strikethrough(true, color: .red)
                .foregroundStyle(Color(red: 69/255, green: 217/255, blue: 79/255))
                .padding()
            
            Text("Markdown in the text like **Bold** and _italic_")
                .foregroundStyle(.blue)
            
            Text(attributedQuote)
                .font(.system(size: 16, weight: .medium, design: .serif))
                .foregroundStyle(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
