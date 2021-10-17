//
//  ResultsViewController.swift
//  Focus
//
//  Created by Ituriel Mejia on 14/10/21.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var currentScore: UILabel!
    @IBOutlet weak var highscore: UILabel!
    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var gameIcon: UIImageView!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var playButton: UIButton!
    
    let model = Results()
    
    //Values given in the segue
    var gamePlayed = 0
    var score = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        currentScore.text = String(score) //Set the current score label
        
        //Set up layout according to the game played
        gameName.text = model.getGameName(index: gamePlayed)
        backgroundView.backgroundColor = model.getGameColor(index: gamePlayed)
        playButton.backgroundColor = model.getGameColor(index: gamePlayed)
        gameIcon.image = model.getGameIcon(index: gamePlayed)
        highscore.text = model.getHighscore(game: gamePlayed, score: score) //Get the highscore label
        
    }

    //Action for play again button, dependening on the current game
    @IBAction func playAgain(_ sender: Any) {
        switch gamePlayed {
        case 0:
            performSegue(withIdentifier: "ResultsToSimon", sender: nil)
        case 1:
            performSegue(withIdentifier: "ResultsToNumbers", sender: nil)
        case 2:
            performSegue(withIdentifier: "ResultsToPatterns", sender: nil)
        case 3:
            performSegue(withIdentifier: "ResultsToImpostor", sender: nil)
        case 4:
            performSegue(withIdentifier: "ResultsToReading", sender: nil)
        case 5:
            performSegue(withIdentifier: "ResultsToZigzag", sender: nil)
        
        default:
            performSegue(withIdentifier: "ResultsToSimon", sender: nil)
        }
    }
    
}
