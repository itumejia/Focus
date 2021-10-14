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


}
