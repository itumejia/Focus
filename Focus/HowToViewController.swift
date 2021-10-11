//
//  HowToViewController.swift
//  Focus
//
//  Created by Ituriel Mejia on 10/10/21.
//

import UIKit

class HowToViewController: UIViewController {
    
    @IBOutlet weak var gameName: UILabel!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var gameIcon: UIImageView!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    var gameSelected = 0
    let model = HowTo()

    override func viewDidLoad() {
        super.viewDidLoad()
        gameName.text = model.getGameName(index: gameSelected)
        backgroundView.backgroundColor = model.getGameColor(index: gameSelected)
        playButton.backgroundColor = model.getGameColor(index: gameSelected)
        instructionsLabel.text = model.getGameInstructions(index: gameSelected)
        gameIcon.image = model.getGameIcon(index: gameSelected)
    }

    @IBAction func play(_ sender: Any) {
        switch gameSelected {
        case 0:
            performSegue(withIdentifier: "instructionsToSimonSays", sender: nil)
        case 1:
            performSegue(withIdentifier: "instructionsToNumbers", sender: nil)
        case 2:
            performSegue(withIdentifier: "instructionsToPatterns", sender: nil)
        case 3:
            performSegue(withIdentifier: "instructionsToImpostor", sender: nil)
        case 4:
            performSegue(withIdentifier: "instructionsToLecture", sender: nil)
        case 5:
            performSegue(withIdentifier: "instructionsToZigzag", sender: nil)
        
        default:
            performSegue(withIdentifier: "instructionsToSimonSays", sender: nil)
        }
    }
    
}

