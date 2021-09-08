//
//  CrazyNumbersGame.swift
//  Focus
//
//  Created by Ituriel Mejia on 07/09/21.
//

import Foundation
import UIKit

class CrazyNumbersGame {
    
    let randomNumbers = Array(0...99).shuffled()
    var randomNumbersCount = 0
    
    let colors = [
        UIColor(red: (59/255.0), green: (61/255.0), blue: (84/255.0), alpha: 1),
        UIColor(red: (0/255.0), green: (159/255.0), blue: (183/255.0), alpha: 1),
        UIColor(red: (13/255.0), green: (111/255.0), blue: (99/255.0), alpha: 1),
        UIColor(red: (234/255.0), green: (180/255.0), blue: (100/255.0), alpha: 1)
    ]
    
    var boardLimitX: CGFloat = 0;
    var boardLimitY: CGFloat = 0;
    var currentX: CGFloat = 0;
    var currentY: CGFloat = 0;
    var nextLevelY: CGFloat = 0;
    
    func populateBoard(view: UIView){
        boardLimitX = view.frame.width;
        boardLimitY = view.frame.height;
        
        while currentY < boardLimitY {
            while currentX < boardLimitX {
                addButton(view: view)
                print("Termino celda")
            }
            currentX = 0
            print("Termino fila")
        }
        
    }
    
    func addButton(view: UIView) {
        
        //El tamaño del numero dependera directamente de la height del label
        
        //Dimensiones tentativas del nuevo numero
        let text = getRandomNumber()
        let height = getRandomHeight()
        let width = getWidthFromHeightAndText(height: height, text: text)
        
        let nextX = currentX + width
        let nextY = currentY + height
        
        //Se revisa que el numero no rebase los limites del tablero
        if nextX < boardLimitX && nextY < boardLimitY {
            let number = UILabel(frame: CGRect(x: currentX, y: currentY, width: width, height: height))
            number.text = text
            number.textColor = getRandomColor() //getRandomColor()
            number.adjustsFontSizeToFitWidth = true
            number.numberOfLines = 0
            number.minimumScaleFactor = 0.1
            number.font = UIFont.boldSystemFont(ofSize: 400) //Font size maximo del numero (se ajusta a la height)
            view.addSubview(number)
        }
        else if nextX >= boardLimitX {
            currentY = nextLevelY
        }
        currentX = nextX
        updateCurrentY(newHeight: nextY)
        
    }
    
    func getRandomHeight() -> CGFloat {
        //De 80 a 350
        return CGFloat.random(in: 80...200)
    }
    
    func getWidthFromHeightAndText(height: CGFloat, text: String) -> CGFloat {
        return (height / 2) * CGFloat(text.count)
    }
    
    func getRandomNumber() -> String {
        let value = randomNumbers[randomNumbersCount]
        randomNumbersCount += 1
        return String(value)
    }
    
    func getRandomColor() -> UIColor {
        return colors[Int.random(in: 0...3)]
    }
    
    func updateCurrentY(newHeight: CGFloat) {
        nextLevelY = max(newHeight, nextLevelY)
    }
}
