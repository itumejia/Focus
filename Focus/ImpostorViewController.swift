//
//  ImpostorViewController.swift
//  Focus
//
//  Created by user197888 on 10/3/21.
//

import UIKit

class ImpostorViewController: UIViewController {
    var game = ImpostorGame()
    
    var target = 0
    var plantButtons = [0,1,2,3,4,5,6,7,8,9,10,11]
    var plantImages = [1,2,3,4,5,6,7]

    
    @IBAction func selectImpostor(_ sender: UIButton) {
        if sender.tag == target{
            game.nextLevel()
            levelTxt.text = "Nivel " + String(game.level)
            loadImages()
        }
        else{
            performSegue(withIdentifier: "ImpostorToResults", sender: nil)
        }
    }
    
    @IBOutlet weak var levelTxt: UILabel!
    @IBOutlet var plants: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages()
        
    }
    
    func loadImages() {
        initializeArrays()
        var repeated = 0
        while(plantButtons.count > 2){
            var randomButton = Int.random(in: 0...(plantButtons.count-1))
            let randomImage = Int.random(in: 0...(plantImages.count-1))
            plants[plantButtons[randomButton]].setImage(UIImage(named: "Plant\(plantImages[randomImage])"), for: .normal)
            plantButtons.remove(at: randomButton)
            randomButton = Int.random(in: 0...(plantButtons.count-1))
            plants[plantButtons[randomButton]].setImage(UIImage(named: "Plant\(plantImages[randomImage])"), for: .normal)
            repeated = plantImages[randomImage]
            plantButtons.remove(at: randomButton)
            plantImages.remove(at: randomImage)
        }
        plants[plantButtons[0]].setImage(UIImage(named: "Plant\(repeated)"), for: .normal)
        plantButtons.remove(at: 0)
        plants[plantButtons[0]].setImage(UIImage(named: "Plant\(plantImages[0])"), for: .normal)
        target = plantButtons[0]
        
    }
    
    func initializeArrays(){
        plantButtons = [0,1,2,3,4,5,6,7,8,9,10,11]
        plantImages = [1,2,3,4,5,6,7]
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let resultsScreen = segue.destination as? ResultsViewController {
                resultsScreen.gamePlayed = 3
                resultsScreen.score = game.level
            }
        }

}
