//
//  ProgressViewController.swift
//  Focus
//
//  Created by Ituriel Mejia on 16/10/21.
//

import UIKit

class ProgressViewController: UIViewController {
    
    
    @IBOutlet weak var simonHighscore: UILabel!
    @IBOutlet weak var zigzagHighscore: UILabel!
    @IBOutlet weak var patternsHighscore: UILabel!
    @IBOutlet weak var numbersHighscore: UILabel!
    @IBOutlet weak var readingHighscore: UILabel!
    @IBOutlet weak var impostorHighscore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        simonHighscore.text = String(Progress.progressInstance.getHighscore(game: Progress.SIMON_SAYS_KEY)) + " niveles"
        zigzagHighscore.text = String(Progress.progressInstance.getHighscore(game: Progress.ZIGZAG_KEY)) + " niveles"
        patternsHighscore.text = String(Progress.progressInstance.getHighscore(game: Progress.PATTERNS_KEY)) + " niveles"
        numbersHighscore.text = String(Progress.progressInstance.getHighscore(game: Progress.CRAZY_NUMBERS_KEY)) + " niveles"
        readingHighscore.text = String(Progress.progressInstance.getHighscore(game: Progress.READING_KEY)) + " niveles"
        impostorHighscore.text = String(Progress.progressInstance.getHighscore(game: Progress.IMPOSTOR_KEY)) + " niveles"

    }


}
