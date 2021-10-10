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
    @IBOutlet weak var nivel: UILabel!
    
    
    let images = [
        UIImage(named: "enredados"), //Enredados
        UIImage(named: "enredados2"),
        UIImage(named: "cars"), //Cars
        UIImage(named: "cars2"),
        UIImage(named: "rat"), //Ratatouille
        UIImage(named: "rat2"),
        UIImage(named: "moana"), //Moana
        UIImage(named: "moana2"),
        UIImage(named: "luca"), //Luca
        UIImage(named: "luca2"),
        UIImage(named: "toystory"), //Toy Story
        UIImage(named: "toystory2"),
        UIImage(named: "monsters"), //Monsters Inc
        UIImage(named: "monsters2"),
        UIImage(named: "valiente"), //Valiente
        UIImage(named: "valiente2"),
        UIImage(named: "ralph"), //Ralph el demoledor
        UIImage(named: "ralph2"),
        UIImage(named: "frozen"), //Valiente
        UIImage(named: "frozen2"),
        
        
    ]
     let imagesHighLevels = [
        UIImage(named: "leon"), //El rey león
        UIImage(named: "leon2"),
        UIImage(named: "nemo"), //Nemo
        UIImage(named: "nemo2"),
     ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        enredados()
        
    }
    
    func enredados(){
        img1.image = images[0]
        img2.image = images[1]
        
    }
    
    

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        nivel.text = "Nooo jalaaaa"
    }
    
    

//        let vc = storyboard? .instantiateViewController(identifier: "reading") as! ReadingViewController
//        vc.phraseToPass = { text in
//            self.nivel.text = text
//        }
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
//    }

    
    

}
