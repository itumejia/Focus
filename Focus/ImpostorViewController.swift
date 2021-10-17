//
//  ImpostorViewController.swift
//  Focus
//
//  Created by davidzaratel on 10/3/21.
//

import UIKit

class ImpostorViewController: UIViewController {
    var game = ImpostorGame()
    
    

    
    @IBAction func selectImpostor(_ sender: UIButton) {
        if sender.tag == game.target{
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
        game.initializeArrays()
        var repeated = 0
        while(game.plantButtons.count > 2){
            var randomButton = Int.random(in: 0...(game.plantButtons.count-1))
            let randomImage = Int.random(in: 0...(game.plantImages.count-1))
            plants[game.plantButtons[randomButton]].setImage(UIImage(named: "Plant\(game.plantImages[randomImage])"), for: .normal)
            game.plantButtons.remove(at: randomButton)
            randomButton = Int.random(in: 0...(game.plantButtons.count-1))
            plants[game.plantButtons[randomButton]].setImage(UIImage(named: "Plant\(game.plantImages[randomImage])"), for: .normal)
            repeated = game.plantImages[randomImage]
            game.plantButtons.remove(at: randomButton)
            game.plantImages.remove(at: randomImage)
        }
        plants[game.plantButtons[0]].setImage(UIImage(named: "Plant\(repeated)"), for: .normal)
        game.plantButtons.remove(at: 0)
        plants[game.plantButtons[0]].setImage(UIImage(named: "Plant\(game.plantImages[0])"), for: .normal)
        game.target = game.plantButtons[0]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let resultsScreen = segue.destination as? ResultsViewController {
                resultsScreen.gamePlayed = 3
                resultsScreen.score = game.level
            }
    }
    
    



}
