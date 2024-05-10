//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Chris WONG on 7/5/2024.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMomeryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
