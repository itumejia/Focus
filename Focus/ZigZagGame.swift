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
    
    func isDeadend(currentTile: Int)->Bool{

        if currentTile == 0 && (touchedTiles[1] == 1 || touchedTiles[3] == 1 ) {
            return false
        }
        else if currentTile == 1 && (touchedTiles[0] == 1  || touchedTiles[2] == 1  || touchedTiles[4] == 1 ) {
            return false
        }
        else if currentTile == 2 && (!endingTileTouched || touchedTiles[1] == 1 || touchedTiles[5] == 1) {
            return false
        }
        else if currentTile == 3 && (touchedTiles[0] == 1 || touchedTiles[4] == 1 || touchedTiles[7] == 1) {
            return false
        }
        else if currentTile == 4 && (touchedTiles[1] == 1 || touchedTiles[3] == 1 || touchedTiles[5] == 1 || touchedTiles[8] == 1) {
            return false
        }
        else if currentTile == 5 && (touchedTiles[2] == 1 || touchedTiles[4] == 1 || touchedTiles[6] == 1 || touchedTiles[9] == 1) {
            return false
        }
        else if currentTile == 6 && (!endingTileTouched || touchedTiles[5] == 1 || touchedTiles[10] == 1) {
            return false
        }
        else if currentTile == 7 && (touchedTiles[3] == 1 || touchedTiles[8] == 1) {
            return false
        }
        else if currentTile == 8 && (touchedTiles[7] == 1 || touchedTiles[4] == 1 || touchedTiles[9] == 1 || touchedTiles[11] == 1) {
            return false
        }
        else if currentTile == 9 && (touchedTiles[5] == 1 || touchedTiles[8] == 1 || touchedTiles[10] == 1 || touchedTiles[12] == 1) {
            return false
        }
        else if currentTile == 10 && (touchedTiles[6] == 1 || touchedTiles[9] == 1 || touchedTiles[13] == 1) {
            return false
        }
        else if currentTile == 11 && (touchedTiles[8] == 1 || touchedTiles[12] == 1) {
            return false
        }
        else if currentTile == 12 && (touchedTiles[11] == 1 || touchedTiles[9] == 1 || touchedTiles[13] == 1) {
            return false
        }
        else if currentTile == 13 && (touchedTiles[12] == 1 || touchedTiles[10] == 1) {
            return false
        }
        return true
    }
    
}
