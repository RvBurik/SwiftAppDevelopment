//
//  Game.swift
//  Apple Pie
//
//  Created by Ricardo van Burik on 09-08-18.
//  Copyright © 2018 Ricardo van Burik. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        var hasSpaces = false
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
                hasSpaces = true
            }
        }
        
        if hasSpaces {
            return setSpacingForUI(word: guessedWord)
        }
        else {
            return guessedWord
        }
    }
    
    mutating func playerGuessed(guessedLetter: Character){
        guessedLetters.append(guessedLetter)
        if !word.contains(guessedLetter) {
            incorrectMovesRemaining -= 1
        }
    }
    
    func setSpacingForUI(word: String) -> String {
        var letters = [String]()
        for letter in word {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        
        return wordWithSpacing
    }
    
}
