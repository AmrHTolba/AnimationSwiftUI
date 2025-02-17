//
//  ContentView.swift
//  Animation in SwiftUI
//
//  Created by Amr El-Fiqi on 30/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    let letters = Array("Hi Amr")
    @State private var dragAmount = CGSize.zero
    @State private var enabled = false
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(DragGesture()
            .onChanged { dragAmount = $0.translation }
            .onEnded {_ in
                dragAmount = .zero
                enabled.toggle()
            }
        )
    }
}

#Preview {
    ContentView()
}
