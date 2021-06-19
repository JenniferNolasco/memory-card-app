//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Grace on 6/17/21.
//

import SwiftUI



class EmojiMemoryGame {
    
    static let vehicleEmojis = ["🚗","🚕","🚙","🚛","🚒","🚐","🛻","🚜","🚓","🏎","🚎","🚌","🚑","🛺","🚃","🚋","🛵","🚲","✈️","🚀",
                                "🛴","🚤","⛵️","🚁","🛶","🚂","🛸","🚚"]
    
    static func makeMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfCardPairs: 4, createCardContent: { index in
            vehicleEmojis[index]
        })
    }
    
    private var model: MemoryGame<String> = makeMemoryGame()
        
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
