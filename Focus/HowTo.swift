//
//  HowTo.swift
//  Focus
//
//  Created by Ituriel Mejia on 10/10/21.
//

import Foundation
import UIKit

class HowTo {
    
    //Names, colors, instructions, sounds and icons of the games instructions and results screen, ordered to get them from a given index
    
    private let gameNames = ["Simón Dice", "Números Locos", "Patrones", "Impostor", "Historias Divertidas", "Zig Zag"]
    
    private let gameColors = [
        UIColor(red: (225/255.0), green: (182/255.0), blue: (113/255.0), alpha: 1),
        UIColor(red: (183/255.0), green: (141/255.0), blue: (135/255.0), alpha: 1),
        UIColor(red: (109/255.0), green: (181/255.0), blue: (139/255.0), alpha: 1),
        UIColor(red: (52/255.0), green: (109/255.0), blue: (99/255.0), alpha: 1),
        UIColor(red: (70/255.0), green: (157/255.0), blue: (180/255.0), alpha: 1),
        UIColor(red: (59/255.0), green: (61/255.0), blue: (82/255.0), alpha: 1),
    ]
    
    private let gameInstructions = ["Repite el patrón de las casillas que vayan iluminando para poder acumular puntos. ", "Toca los números que aparezcan en pantalla, en orden de menor a mayor valor.", "Selecciona la figura faltante para completar el patrón.", "Selecciona la plantita que no esté repetida en la pantalla.", "Analiza e interpreta la frase que aparezca en pantalla para elegir la imagen que corresponda.", "Toca cada casilla para poder llegar del punto A al punto B pasando por todas las monedas. Para iniciar el juego, espera a que desaparezcan las monedas y da click en la casilla con la letra A."]
    
    private let instructionsSounds = [
        Bundle.main.path(forResource: "SimonSaysInstructions", ofType: "m4a"),
        Bundle.main.path(forResource: "Números locos", ofType: "m4a"),
        Bundle.main.path(forResource: "PatternsInstructions", ofType: "m4a"),
        Bundle.main.path(forResource: "Impostor", ofType: "m4a"),
        Bundle.main.path(forResource: "LecturaInstructions", ofType: "m4a"),
        Bundle.main.path(forResource: "Zig zag", ofType: "m4a"),
    ]
    
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
    
    public func getSound(index: Int) -> URL {
        return URL(fileURLWithPath: instructionsSounds[index]!)
    }
    
}
