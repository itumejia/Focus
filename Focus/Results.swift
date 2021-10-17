//
//  Results.swift
//  Focus
//
//  Created by Ituriel Mejia on 14/10/21.
//

import Foundation

//Uses HowTo class to get the layout info
class Results: HowTo {
    
    //Get the string with the highscore by using the Progress class
    func getHighscore(game: Int, score: Int) -> String {
        switch game {
        case 0:
            return String(Progress.progressInstance.checkAndGetHighscore(game: Progress.SIMON_SAYS_KEY, currentScore: score))
        case 1:
            return String(Progress.progressInstance.checkAndGetHighscore(game: Progress.CRAZY_NUMBERS_KEY, currentScore: score))
        case 2:
            return String(Progress.progressInstance.checkAndGetHighscore(game: Progress.PATTERNS_KEY, currentScore: score))
        case 3:
            return String(Progress.progressInstance.checkAndGetHighscore(game: Progress.IMPOSTOR_KEY, currentScore: score))
        case 4:
            return String(Progress.progressInstance.checkAndGetHighscore(game: Progress.READING_KEY, currentScore: score))
        case 5:
            return String(Progress.progressInstance.checkAndGetHighscore(game: Progress.ZIGZAG_KEY, currentScore: score))
        default:
            return String(Progress.progressInstance.checkAndGetHighscore(game: Progress.SIMON_SAYS_KEY, currentScore: score))
        }
    }
}
