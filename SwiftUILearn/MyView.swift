//
//  MyView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 22.09.2023.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        VStack {
            Text("Circle")
                .frame(width: 200, height: 200)
                .font(.title)
                .padding()
                .background(.orange)
                .foregroundStyle(.white)
                .clipShape(Circle())
            Text("Ellipse")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.orange)
                .foregroundStyle(.white)
                .clipShape(Ellipse())
            Text("Capsule")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.orange)
                .foregroundStyle(.white)
                .clipShape(Capsule())
            Text("Custom")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.orange)
                .foregroundStyle(.black)
                .clipShape(CustomShape())
        }
    }
}

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    MyView()
}
