//
//  CrazyNumbersBoard.swift
//  Focus
//
//  Created by Ituriel Mejia on 29/09/21.
//

import Foundation
import UIKit

class CrazyNumbersBoard {
    
    var randomNumbersCount = 0 //Index to go through the random numbers array
    var lastColor = -1 //Value to know the last color used
    
    //Range for the numbers text size
    var minTextSize: CGFloat = 80.0
    var maxTextSize: CGFloat = 200.0
    
    //Colors available for the numbers
    let colors = [
        UIColor(red: (59/255.0), green: (61/255.0), blue: (84/255.0), alpha: 1),
        UIColor(red: (0/255.0), green: (159/255.0), blue: (183/255.0), alpha: 1),
        UIColor(red: (13/255.0), green: (111/255.0), blue: (99/255.0), alpha: 1),
        UIColor(red: (234/255.0), green: (180/255.0), blue: (100/255.0), alpha: 1)
    ]
    
    //Get random label height from the range
    func getRandomHeight() -> CGFloat {
        //De 80 a 350
        return CGFloat.random(in: minTextSize...maxTextSize)
    }
    
    //Get width of label according to the height and to the number of digits in the label
    func getWidthFromHeightAndText(height: CGFloat, text: String) -> CGFloat {
        return (height / 2) * CGFloat(text.count)
    }
  
    //Get the next number from the random numbers array
    func getRandomNumber(randomNumbers: Array<Int>) -> String {
        let value = randomNumbers[randomNumbersCount]
        randomNumbersCount += 1
        return String(value)
    }
   
    //Get random color, avoiding to use the last color used to prevent numbers with the same color to be together
    func getRandomColor() -> UIColor {
        var random = Int.random(in: 0...3)
        //Avoid having numbers together with the same color
        if random == lastColor {
            if random == 3 {
                random = 0
            }
            else {
                random += 1
            }
        }
        lastColor = random
        return colors[random]
    }
    
    //Add difficulty to the game by decreasing the text size of the number, so that more numbers fit in screen
    public func addDifficulty() {
        if maxTextSize > 100 {
            maxTextSize -= 10
        }
    }
    
}
