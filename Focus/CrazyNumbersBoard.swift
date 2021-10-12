////
////  CrazyNumbersBoard.swift
////  Focus
////
////  Created by Ituriel Mejia on 29/09/21.
////
//
//import Foundation
//import UIKit
//
//class CrazyNumbersBoard {
//    
//    var randomNumbersCount = 0
//    var lastColor = -1
//    var minTextSize = 80.0
//    var maxTextSize = 200.0
//    
//    let colors = [
//        UIColor(red: (59/255.0), green: (61/255.0), blue: (84/255.0), alpha: 1),
//        UIColor(red: (0/255.0), green: (159/255.0), blue: (183/255.0), alpha: 1),
//        UIColor(red: (13/255.0), green: (111/255.0), blue: (99/255.0), alpha: 1),
//        UIColor(red: (234/255.0), green: (180/255.0), blue: (100/255.0), alpha: 1)
//    ]
//    
//    func getRandomHeight() -> CGFloat {
//        //De 80 a 350
//        return CGFloat.random(in: minTextSize...maxTextSize)
//    }
//    
//    func getWidthFromHeightAndText(height: CGFloat, text: String) -> CGFloat {
//        return (height / 2) * CGFloat(text.count)
//    }
//    
//    func getRandomNumber(randomNumbers: Array<Int>) -> String {
//        let value = randomNumbers[randomNumbersCount]
//        randomNumbersCount += 1
//        return String(value)
//    }
//    
//    func getRandomColor() -> UIColor {
//        var random = Int.random(in: 0...3)
//        //Avoid having numbers together with the same color
//        if random == lastColor {
//            if random == 3 {
//                random = 0
//            }
//            else {
//                random += 1
//            }
//        }
//        lastColor = random
//        return colors[random]
//    }
//    
//    public func addDifficulty() {
//        if maxTextSize > 100 {
//            maxTextSize -= 10
//        }
//    }
//    
//}
