//
//  MemoriesGame.swift
//  memories
//
//  Created by 李剑澜 on 2021/1/19.
//  Copyright © 2021 Lan. All rights reserved.
//

import Foundation

struct MemoryGames<cardcontent> {
    var cards:Array<Card>;
    
    func choseCard(card:Card) -> Void {
        print("choosen the \(card)");
    }
    struct Card {
        var isMatched:Bool;
        var isFaceUp:Bool;
        var content:cardcontent;
    }
}
