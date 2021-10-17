//
//  CrazyNumbersGame.swift
//  Focus
//
//  Created by Ituriel Mejia on 07/09/21.
//

import Foundation
import UIKit

class CrazyNumbersGame {
    private var level = 1
    private var numbers: Array<Int> = [] //the array with the numbers in the screen
    private var numbersCount: Int = 0
    public let LOSE_CODE = 0
    public let OK_CODE = 1
    public let WIN_CODE = 2
    
    
    //Get array of random numbers to populate the board
    public func getRandomNumbers() -> Array<Int> {
        return Array(0...99).shuffled()
    }
    
    //Check if the selected number is correct
    public func selectNumber(numberSelected: Int) -> Int {
        if numberSelected == numbers[numbersCount] {
            numbersCount+=1
            if numbersCount == numbers.count {
                return WIN_CODE
            }
            return OK_CODE
        }
        return LOSE_CODE
    }
    
    //Add a number to the numbers in screen list
    public func addNumberToNumbers(number: Int) {
        numbers.append(number)
    }
    
    //Sort the array of the numbers in screen
    public func sortNumbers() {
        numbers.sort()
    }
    
    //Restart values for next level
    public func nextLevel() {
        level += 1
        numbers = []
        numbersCount = 0
    }
    
    //Get current level
    public func getLevel() -> Int {
        return level
    }
    
}
