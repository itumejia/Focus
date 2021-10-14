//
//  ResultsViewController.swift
//  Focus
//
//  Created by Ituriel Mejia on 14/10/21.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var currentScore: UILabel!
    
    var gamePlayed = 0
    var score = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        currentScore.text = String(score)
    }

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
