//
//  ZigZagGame.swift
//  Focus
//
//  Created by davidzaratel on 10/11/21.
//

import Foundation


class ZigZagGame{
    //Se crean los atributos de la clase
    //Nivel del juego
    var level = 1
    //Variable que determina si el juego ha iniciado
    var gameStarted = false
    //Variable que determina si el tiempo de espera de las monedas ha terminado
    var finishedWaitTime = false
    //El siguiente arreglo cuenta con los tags de las casillas normales
    var tilesArray = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
    //El siguiente arreglo contendra los tags de las casillas con monedas
    var coinTiles = [Int] ()
    //El siguiente arreglo contendra 1s y 0s que indicarian si las casillas han sido presionadas, el indice de cada posicion correspondera al tag de cada casilla
    var touchedTiles = [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
    //Se guarda la ultima casilla presionada
    var lastTouchedTile = -2
    //Variable que indica cuantas monedas han sido recolectadas
    var coinsCollected = 0
    //Variable que indica si la ultima casilla ha sido presionada
    var endingTileTouched = false
    
    //Se restauran los valores iniciales de los atributos
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
    
    //Se inicia el juego
    func startGame(){
        gameStarted = true
    }
    
    //Se actualiza el nivel del juego
    func nextLevel(){
        level = level + 1
    }
    
    //El tiempo de espera de las monedas termina
    func finishWait(){
        finishedWaitTime = true
    }
    
    //Se actualiza el valor de la ultima casilla presionada
    func touchLastTile(){
        endingTileTouched = true
    }
    
    //Se determina si la casilla actual todavia cuenta con casillas adyacentes disponibles para avanzar, de lo contrario es un callejon sin salida
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
