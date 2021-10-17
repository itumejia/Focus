//
//  Progress.swift
//  Focus
//
//  Created by Ituriel Mejia on 14/10/21.
//

import Foundation

class Progress {
    
    static let progressInstance = Progress() //unique instance of the class
    
    let defaults = UserDefaults.standard //Saves data in User Defaults
    
    //Keys to access User Defaults values
    static public let SIMON_SAYS_KEY = "simonSays"
    static public let CRAZY_NUMBERS_KEY = "crazyNumbers"
    static public let PATTERNS_KEY = "patterns"
    static public let ZIGZAG_KEY = "zigZag"
    static public let READING_KEY = "reading"
    static public let IMPOSTOR_KEY = "impostor"
    
    //Get the value saved in User Defaults
    public func getHighscore(game: String) -> Int {
        return defaults.object(forKey: game) as? Int ?? 0
    }
    
    //Check if a current score is greater than the highscore, update it if needed and returns the updated highscore
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
