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
            CardView(isFaceUp: true)
            CardView()
            CardView()
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
    var isFaceUp: Bool = false
    var body: some View {
        ZStack (content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12.0)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12.0)
                    .strokeBorder(lineWidth: 2.0)
                Text("👻").font(.largeTitle)
            } else {
                // the background color populated by outer view
                RoundedRectangle(cornerRadius: 12.0)
            }
            
        })
    }
}
