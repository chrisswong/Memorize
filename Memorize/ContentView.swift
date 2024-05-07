//
//  ContentView.swift
//  Memorize
//
//  Created by Chris WONG on 7/5/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView()
            CardView(isFaceUp: true)
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}


struct CardView: View {
    @State var isFaceUp = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2.0)
                Text("👻").font(.largeTitle)
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
