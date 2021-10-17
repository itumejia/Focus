//
//  PatronesViewController.swift
//  Focus
//
//  Created by Karen Rugerio on 12/10/21.
//

import Foundation
import UIKit

class PatternViewController: UIViewController {
    var game = PatternsGame()
    var find = 0
    var missing = 0
    var shapeSlot = [0,1,2,3,4,5,6]
    var shapeOptions = [0,1,2,3]
    var randomPatterns = [0,1,2,3,4,5]
    
    @IBAction func selectShape(_ sender: UIButton) {
        
        if sender.tag == find {
            game.nextLevel()
            level.text = "Nivel " + String(game.level)
            loadImages()
        }
        else{
            level.text = "Perdiste"
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
        let randomPattern = Int.random(in: 0...(randomPatterns.count-1))
        var randomImage1 = 0
        var randomImage2 = 0
        var randomImage3 = 0
        var randomImage4 = 0
        
        while (randomImage1 == randomImage2 ||  randomImage1 ==  randomImage3 || randomImage1 == randomImage4 || randomImage2 == randomImage3 || randomImage3 == randomImage4 )
        {
            randomImage1 = Int(arc4random_uniform(4))
            randomImage2 = Int(arc4random_uniform(4))
            randomImage3 = Int(arc4random_uniform(4))
            randomImage4 = Int(arc4random_uniform(4))
        }
        
            if randomPattern == 0 { //1,2,1,2,1
                shapes[0].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[0].tag = randomImage1
                shapes[1].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[1].tag = randomImage2
                shapes[2].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[2].tag = randomImage2
                shapes[3].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[3].tag = randomImage1
                shapes[4].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[4].tag = randomImage2
                shapes[5].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[5].tag = randomImage2
                shapes[6].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[6].tag = randomImage1


            } else if randomPattern == 1 { //1,1,1,1,1,1,1

                shapes[0].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[0].tag = randomImage1
                shapes[1].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[1].tag = randomImage2
                shapes[2].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[2].tag = randomImage1
                shapes[3].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[3].tag = randomImage2
                shapes[4].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[4].tag = randomImage1
                shapes[5].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[5].tag = randomImage2
                shapes[6].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[6].tag = randomImage1
                
            } else if randomPattern == 2 { //2,1,2,1,~2
                shapes[0].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[0].tag = randomImage1
                shapes[1].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[1].tag = randomImage1
                shapes[2].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[2].tag = randomImage2
                shapes[3].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[3].tag = randomImage1
                shapes[4].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[4].tag = randomImage1
                shapes[5].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[5].tag = randomImage2
                shapes[6].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[6].tag = randomImage1
                
            }  else if randomPattern == 3{ //2,2,2,~2
                shapes[0].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[0].tag = randomImage1
                shapes[1].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[1].tag = randomImage1
                shapes[2].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[2].tag = randomImage2
                shapes[3].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[3].tag = randomImage2
                shapes[4].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[4].tag = randomImage1
                shapes[5].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[5].tag = randomImage1
                shapes[6].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[6].tag = randomImage2
                
            } else if randomPattern == 4 { //1,1,1,1,1,1,1
                shapes[0].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[0].tag = randomImage1
                shapes[1].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[1].tag = randomImage2
                shapes[2].setImage(UIImage(named: "Shape\(shapeOptions[randomImage3])"), for: .normal)
                shapes[2].tag = randomImage3
                shapes[3].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[3].tag = randomImage1
                shapes[4].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[4].tag = randomImage2
                shapes[5].setImage(UIImage(named: "Shape\(shapeOptions[randomImage3])"), for: .normal)
                shapes[5].tag = randomImage3
                shapes[6].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[6].tag = randomImage1
                
            } else if randomPattern == 5 { //2,1,+1,1,2
                shapes[0].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[0].tag = randomImage1
                shapes[1].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[1].tag = randomImage1
                shapes[2].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[2].tag = randomImage2
                shapes[3].setImage(UIImage(named: "Shape\(shapeOptions[randomImage3])"), for: .normal)
                shapes[3].tag = randomImage3
                shapes[4].setImage(UIImage(named: "Shape\(shapeOptions[randomImage2])"), for: .normal)
                shapes[4].tag = randomImage2
                shapes[5].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[5].tag = randomImage1
                shapes[6].setImage(UIImage(named: "Shape\(shapeOptions[randomImage1])"), for: .normal)
                shapes[6].tag = randomImage1

            }
        
            find = shapes[missing].tag
            shapes[missing].setImage(UIImage(named: "Shape4"), for: .normal)
        
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

