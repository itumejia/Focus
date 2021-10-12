//
//  MainMenuViewController.swift
//  Focus
//
//  Created by Ituriel Mejia on 10/10/21.
//

import UIKit

class MainMenuViewController: UIViewController {
    
//    let segues = ["mainToSimon", "mainToNumbers", "mainToPatterns", "mainToImpostor", "mainToLecture", "mainToZigzag",]

    @IBOutlet var games: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playRandom(_ sender: Any) {
        performSegue(withIdentifier: "mainToInstructions", sender: games[Int.random(in: 0...5)])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gameView: UIView
        if sender is UITapGestureRecognizer {
            gameView = (sender as! UITapGestureRecognizer).view!
        } else {
            gameView = sender as! UIView
        }
        let instructionsVC = segue.destination as! HowToViewController
        if(gameView.tag == 0) {
            instructionsVC.gameSelected = 0
            return
        }
        if(gameView.tag == 1) {
            instructionsVC.gameSelected = 1
            return
        }
        if(gameView.tag == 2) {
            instructionsVC.gameSelected = 2
            return
        }
        if(gameView.tag == 3) {
            instructionsVC.gameSelected = 3
            return
        }
        if(gameView.tag == 4) {
            instructionsVC.gameSelected = 4
            return
        }
        if(gameView.tag == 5) {
            instructionsVC.gameSelected = 5
            return
        }
    }
    
    @IBAction func unwindToFirstViewController(_ sender: UIStoryboardSegue) {}
    
}
