//
//  ImpostorViewController.swift
//  Focus
//
//  Created by user197888 on 10/3/21.
//

import UIKit

class ImpostorViewController: UIViewController {
    var target = 0
    var plantButtons = [0,1,2,3,4,5,6,7,8,9,10,11]
    var plantImages = [1,2,3,4,5,6,7]
    @IBAction func selectImpostor(_ sender: UIButton) {
    }
    
    @IBOutlet var plants: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages()
        
    }
    
    func loadImages() {
        var repeated = 0
        while(plantButtons.count > 2){
            var randomButton = Int.random(in: 0...(plantButtons.count-1))
            let randomImage = Int.random(in: 0...(plantImages.count-1))
            plants[plantButtons[randomButton]].setImage(UIImage(named: "Plant\(plantImages[randomImage])"), for: .normal)
            plantButtons.remove(at: randomButton)
            randomButton = Int.random(in: 0...(plantButtons.count-1))
            plants[plantButtons[randomButton]].setImage(UIImage(named: "Plant\(plantImages[randomImage])"), for: .normal)
            plantButtons.remove(at: randomButton)
            plantImages.remove(at: randomImage)
            repeated = randomImage
        }
        plants[plantButtons[0]].setImage(UIImage(named: "Plant\(plantImages[repeated])"), for: .normal)
        
        
    }



}
