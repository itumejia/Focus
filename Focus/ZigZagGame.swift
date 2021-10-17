//
//  ZigZagGame.swift
//  Focus
//
//  Created by user197888 on 10/11/21.
//

import Foundation


class ZigZagGame{
    var level = 1
    var gameStarted = false
    var finishedWaitTime = false
    var tilesArray = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
    var coinTiles = [Int] ()
    var touchedTiles = [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
    var lastTouchedTile = -2
    var coinsCollected = 0
    var endingTileTouched = false
    
    func restoreValues(){
        tilesArray = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
        coinTiles = [Int] ()
        touchedTiles = [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
        gameStarted = false
        finishedWaitTime = false
        lastTouchedTile = -2
        coinsCollected = 0
        endingTileTouched = false
    }
    
    func startGame(){
        gameStarted = true
    }
    
    func nextLevel(){
        level = level + 1
    }
    
    func finishWait(){
        finishedWaitTime = true
    }
    
    func touchLastTile(){
        endingTileTouched = true
    }
    
}
