//
//  CrazyNumbersViewController.swift
//  Focus
//
//  Created by Ituriel Mejia on 07/09/21.
//

import UIKit

class CrazyNumbersViewController: UIViewController {

    
    @IBOutlet weak var numbersContainer: UIView!
    let game = CrazyNumbersGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game.populateBoard(view: numbersContainer)
        // Do any additional setup after loading the view.
    }


}
