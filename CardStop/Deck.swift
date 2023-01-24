//
//  Deck.swift
//  CardStop
//
//  Created by Gustavo Nunes Pereira on 23/01/23.
//

import UIKit

struct Deck {
    static var cards: [UIImage] {
        
        let values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "K", "Q", "A"];
        let naipes = ["H", "S", "C", "D"];
        
        var cards: [UIImage] = [];
        
        for n in naipes {
            for v in values {
                cards.append(UIImage(named: "\(v)\(n)")!);
            }
        }
        
        return cards;
    }
}
