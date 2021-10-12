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
    
    var different = 0
    var shapeSlot = [0,1,2,3,4,5,6]
    var shapeOptions = [0,1,2,3]
    
    @IBAction func selectShape(_ sender: UIButton) {
        if sender.tag == different{
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
        var repeated = 0
        for i in 0...shapes.count - 1 {
            //var randomButton = Int.random(in: 0...(shapeSlot.count-1))
            let randomImage = Int.random(in: 0...(shapeOptions.count-1))
            shapes[i].setImage(UIImage(named: "Shape\(shapeOptions[randomImage])"), for: .normal)
        }
        
        //Opciones de respuesta (siempre son las mismas)
        for i in 0...answer.count - 1 {
            answer[i].setImage(UIImage(named: "Shape\(shapeOptions[i])"), for: .normal)
        }
        
            
//            answer[shapeSlot[randomButton]].setImage(UIImage(named: "Shape\(shapeOptions[randomImage])"), for: .normal)
//            shapeSlot.remove(at: randomButton)
//            randomButton = Int.random(in: 0...(shapeSlot.count-1))
//            answer[shapeSlot[randomButton]].setImage(UIImage(named: "Shape\(shapeOptions[randomImage])"), for: .normal)
//            repeated = shapeOptions[randomImage]
//            shapeSlot.remove(at: randomButton)
//            shapeOptions.remove(at: randomImage)

        
        
//        answer[shapeSlot[0]].setImage(UIImage(named: "Shape\(repeated)"), for: .normal)
//        shapeSlot.remove(at: 0)
//        answer[shapeSlot[0]].setImage(UIImage(named: "Shape\(shapeOptions[0])"), for: .normal)
//        different = shapeSlot[0]
        
    }
        
}
