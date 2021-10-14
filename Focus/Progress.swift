//
//  Progress.swift
//  Focus
//
//  Created by Ituriel Mejia on 14/10/21.
//

import Foundation

class Progress {
    
    static let progressInstance = Progress()
    
    let defaults = UserDefaults.standard
    
    static public let SIMON_SAYS_KEY = "simonSays"
    static public let CRAZY_NUMBERS_KEY = "crazyNumbers"
    static public let PATTERNS_KEY = "patterns"
    static public let ZIGZAG_KEY = "zigZag"
    static public let READING_KEY = "reading"
    static public let IMPOSTOR_KEY = "impostor"
    
    public func getHighscore(game: String) -> Int {
        return defaults.object(forKey: game) as? Int ?? 0
    }
    
    public func checkAndGetHighscore(game: String, currentScore: Int) -> Int {
        let highscore = defaults.object(forKey: game) as? Int ?? 0
        if currentScore <= highscore {
            return highscore
        }
        else {
            defaults.set(currentScore, forKey: game)
            return currentScore
        }
    }
    
    
    
}
