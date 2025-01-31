//
//  ContentView.swift
//  Animation in SwiftUI
//
//  Created by Amr El-Fiqi on 30/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    @State private var enabled = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation(.spring(duration: 1, bounce: 0.5)) {
                    animationAmount += 360
                }
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .animation(nil, value: enabled)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
            .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
