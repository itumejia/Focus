//
//  Reading2ControllerView.swift
//  Focus
//
//  Created by Karen Rugerio on 09/10/21.
//

import Foundation
import UIKit

class Reading2ControllerView: UIViewController {
    
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var level: UILabel!
    
    
    let images = [UIImage(named: "cars"),  UIImage(named: "cars2")]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        img1.image = images.randomElement()!
        
    }

}
