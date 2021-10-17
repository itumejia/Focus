//
//  ImpostorGame.swift
//  Focus
//
//  Created by davidzaratel on 10/3/21.
//

import Foundation
import UIKit


class ImpostorGame{
    var level = 1
    var target = 0
    var plantButtons = [0,1,2,3,4,5,6,7,8,9,10,11]
    var plantImages = [1,2,3,4,5,6,7]
    
    func nextLevel(){
        level = level + 1
    }
    
    func initializeArrays(){
        plantButtons = [0,1,2,3,4,5,6,7,8,9,10,11]
        plantImages = [1,2,3,4,5,6,7]
    }
    
    
}
