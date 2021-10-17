//
//  PatronesViewController.swift
//  Focus
//
//  Created by Karen Rugerio on 12/10/21.
//

import Foundation
import UIKit

class PatternViewController: UIViewController {
    var game = ImpostorGame()
    var find: UIImage?
    var missing = 0
    var shapeSlot = [0,1,2,3,4,5,6]
    var shapeOptions = [0,1,2,3]
    var randomPatterns = [[1,2,1,2,1],[2,3,2]]
    
    @IBAction func selectShape(_ sender: UIButton) {
        
        if sender.tag == missing {
            game.nextLevel()
            level.text = "Nivel " + String(game.level)
            loadImages()
        }
        else{
            level.text = "Perdiste"
            loadImages()
        }
    }
    
    
    @IBOutlet var shapes: [UIButton]! //OutletCollection
    @IBOutlet var answer: [UIButton]! //OutletCollection
    @IBOutlet weak var level: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages()
    }
    
    func loadImages() {
        restart()
        missing = Int.random(in: 0...(shapeSlot.count-1))
            // plantImages.missing(at: randomImage)
        var position = 0
        var i = 0
        let randomPattern = Int.random(in: 0...(randomPatterns.count-1))
        let randomImage1 = Int.random(in: 0...(shapeOptions.count-1))
        shapeOptions.remove(at: randomImage1)
        let randomImage2 = Int.random(in: 0...(shapeOptions.count-1))
        let firstArray = randomPatterns[randomPattern]
        print(randomPattern)
        print(firstArray)
        while position <= shapeSlot.count-1{
            print("position\(position)")
            print(firstArray)
            if firstArray[i] == 1{
                shapes[position].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                position += 1
                i += 1
              //print()
//                if position > shapeSlot.count-1{
//                    break
//                } else {
//                    position += 1
//                }
//            } else {
////               for j in 1...firstArray[position]{
////                    shapes[position].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
//                   position += 1
//                   // print("hay \(j) dos o tres")
//               }
//            }
        }
            else{
                for _ in 1...firstArray[i]{
                shapes[position].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                position += 1
                }
                i += 1
            }
        }
        //Opciones de respuesta (siempre son las mismas)
        for k in 0...answer.count - 1 {
            shapeOptions = [0,1,2,3]
            answer[k].setImage(UIImage(named: "Shape\(shapeOptions[k])"), for: .normal)
        }
    }
    
    func restart(){
        
        let shapeSlot = [0,1,2,3,4,5,6]
        let shapeOptions = [0,1,2,3]
    }

        

        
}

//restart()
//let missing = Int.random(in: 0...(shapeOptions.count-1))
//    // plantImages.missing(at: randomImage)
//var position = 0
//let randomPattern = 1 //Int.random(in: 0...(randomPatterns.count-1))
//let randomImage1 = Int.random(in: 0...(shapeOptions.count-1))
//shapeOptions.missing(at: randomImage1)
//let randomImage2 = Int.random(in: 0...(shapeOptions.count-1))
//if randomPattern == 1 {
//    let firstArray = randomPatterns[0]  // ["W", "X", "Y", "Z"]
//    for i in 0...firstArray.count-1{
//        print(firstArray[i])
//        if firstArray[i] == 1{
//            shapes[position].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
//            position += 1
//        } else{
//            for _ in 0...firstArray[i]-1{
//            shapes[position].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
//            position += 1
//            }
//        }
//
//    }
//
//    shapes[position].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
//}
//
////Opciones de respuesta (siempre son las mismas)
//for i in 0...answer.count - 1 {
//    answer[i].setImage(UIImage(named: "Shape\(shapeOptions[i])"), for: .normal)
//}
//}
//
//func restart(){
//var shapeSlot = [0,1,2,3,4,5,6]
//var shapeOptions = [0,1,2,3]
//}
