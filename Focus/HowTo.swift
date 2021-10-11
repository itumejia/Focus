//
//  HowTo.swift
//  Focus
//
//  Created by Ituriel Mejia on 10/10/21.
//

import Foundation
import UIKit

class HowTo {
    private let gameNames = ["Simón Dice", "Números Locos", "Patrones", "Impostor", "Historias Divertidas", "Zig Zag"]
    
    private let gameColors = [
        UIColor(red: (225/255.0), green: (182/255.0), blue: (113/255.0), alpha: 1),
        UIColor(red: (183/255.0), green: (141/255.0), blue: (135/255.0), alpha: 1),
        UIColor(red: (109/255.0), green: (181/255.0), blue: (139/255.0), alpha: 1),
        UIColor(red: (52/255.0), green: (109/255.0), blue: (99/255.0), alpha: 1),
        UIColor(red: (70/255.0), green: (157/255.0), blue: (180/255.0), alpha: 1),
        UIColor(red: (59/255.0), green: (61/255.0), blue: (82/255.0), alpha: 1),
    ]
    
    private let gameInstructions = ["Simón Dice", "Números Locos", "Patrones", "Impostor", "Historias Divertidas", "Zig Zag"]
    
    private let gameIcons = [
        UIImage(named: "simonsays"),
        UIImage(named: "crazynumbers"),
        UIImage(named: "secuencia"),
        UIImage(named: "impostor"),
        UIImage(named: "lecture"),
        UIImage(named: "zigzag"),
    ]
    
    public func getGameName(index: Int) -> String {
        return gameNames[index]
    }
    
    public func getGameColor(index: Int) -> UIColor {
        return gameColors[index]
    }
    
    public func getGameInstructions(index: Int) -> String {
        return gameInstructions[index]
    }
    
    public func getGameIcon(index: Int) -> UIImage {
        return gameIcons[index]!
    }
    
}
