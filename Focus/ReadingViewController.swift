//
//  ReadingViewController.swift
//  Focus
//
//  Created by Karen Rugerio on 10/09/21.
//

import UIKit

class ReadingViewController: UIViewController {
    
    @IBOutlet weak var phrase: UILabel!
    
    let phrases = ["CATSTILLO", "MAGIA", "PRINCESA"]
    
    
    //let index = Int(arc4random_uniform(UInt32(phrases.count)))
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        phrase.text = "Frase"
    }

}

