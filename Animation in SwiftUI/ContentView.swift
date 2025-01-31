//
//  ContentView.swift
//  Animation in SwiftUI
//
//  Created by Amr El-Fiqi on 30/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Stepper("Scale Amount", value: $animationAmount.animation(), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 0.5
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
