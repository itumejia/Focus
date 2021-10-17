//
//  SimonSaysGame.swift
//  Focus
//
//  Created by user191106 on 10/17/21.
//

import Foundation
import UIKit


class SimonSaysGame{ // clase para crear objeto de tipo SimonSaysGame
    var score = 0 // score del usuario
    var userTurn = false //turno del usuario
    var array = [Int]() // arreglo de enteros que sera el patron del juego

    //funcion para aumentar el score
    func nextScore(){
        score = score + 1
    }
    
    
}
