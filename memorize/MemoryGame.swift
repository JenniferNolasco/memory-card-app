//
//  MemoryGame.swift
//  memorize
//
//  Created by Grace on 6/17/21.
//

import Foundation

struct MemoryGame<cardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        <#function body#>
    }
    
    init(numberOfCardPairs: Int, createCardContent: (Int) -> cardContent) {
        cards = Array<Card>()
//        calculate how many cards to add to card array from given numberOfCardPairs
        for index in 0..<numberOfCardPairs {
            let content = createCardContent(index)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp:Bool = false
        var isMatched: Bool = false
        var content: cardContent
        
    }
}
