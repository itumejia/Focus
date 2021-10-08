//
//  ReadingViewController.swift
//  Focus
//
//  Created by Karen Rugerio on 10/09/21.
//

import UIKit

class ReadingViewController: UIViewController {
    
    
    @IBOutlet weak var phrase: UILabel!
    
    let phrases = ["La princesa arma un rompecabezas", "El Rayo McQueen corre en una carrera", "Remi el ratón de Ratatouille, cocina una quesadilla", "Mohana está habla con su abuela"]
    
    
    
    //let index = Int(arc4random_uniform(UInt32(phrases.count)))
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        phrase.text = phrases.randomElement()!
        
    }

}

