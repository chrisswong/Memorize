//
//  ContentView.swift
//  Memorize
//
//  Created by Chris WONG on 7/5/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "🕷️", "😈", "😈"  ]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}


struct CardView: View {
    let content: String
    @State var isFaceUp = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2.0)
                Text(content).font(.largeTitle)
            } else {
                // the background color populated by outer view
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
