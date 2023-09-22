//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    let tasks = ["Task1", "Task2", "Task3", "Task4", "Task5"]
    
    var body: some View {
        List(tasks, id: \.self) { task in
            Text(task)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
