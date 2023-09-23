//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI

class TimerManager: ObservableObject {
    @Published var timerCount = 0
    private var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            self?.timerCount += 1
        }
    }
    
    func stop() {
        timerCount = 0
        timer.invalidate()
    }
}

struct ContentView: View {
    @StateObject private var timerManager = TimerManager()
    
    var body: some View {
        VStack {
            Text("Timer count: \(timerManager.timerCount)")
            Button(action: {
                timerManager.start()
            }, label: {
                Text("Start timer")
                    .padding()
            })
                .background(.blue)
                .foregroundStyle(.white)
                .font(.title)
                .clipShape(.buttonBorder)
                .padding()
            Button(action: {
                timerManager.stop()
            }, label: {
                Text("Stop Timer")
                    .padding()
            })
                .background(.blue)
                .foregroundStyle(.white)
                .font(.title)
                .clipShape(.buttonBorder)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
