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
    
    var frase = ""
    static var cont = 1
    //var cont2 = cont
    //var myString = String(cont)
    
    
    
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
        UIImage(named: "leon"), // reyLeon
        UIImage(named: "leon2"),
        UIImage(named: "nemo"), //Nemo
        UIImage(named: "nemo2"),
     ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //nivel?.text = frase
        //nivel!.text = String(cont)
        //let newValue = cont
        var contador2 = Reading2ControllerView.cont
        nivel.text = (nivel.text ?? "") + "\(contador2)"
        //cambiar por arreglos
        if frase == "El pequeño león Simba baila con Timón y Pumba"{
            reyLeon()
        } else if frase == "Marlin el pez naranja y Dory el pez azul nadan con la tortugas"{
            nemo()
        }else{
            enredados()
        }
    }
    
    //add cases
    func enredados(){
        img1.image = images[0]
        img2.image = images[1]
    }
    
    func reyLeon(){
        img1.image = imagesHighLevels[0]
        img2.image = imagesHighLevels[1]
    }
    
    func nemo(){
        img1.image = imagesHighLevels[2]
        img2.image = imagesHighLevels[3]
    }
    

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
    
        //Para pasar de una pantalla a otra
        if (frase == "El pequeño león Simba baila con Timón y Pumba" && (sender.view as! UIImageView).image == UIImage(named: "leon2")){
            //let viewlev = readingLevel()
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            //cont = cont + 1
            //nivel.text = (nivel.text ?? "") + myString
        }
        let vc = storyboard? .instantiateViewController(identifier: "reading") as! ReadingViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
               //vc.modalPresentationStyle = .fullScreen
               //spresent(vc, animated: true)
    }
    
    

//        let vc = storyboard? .instantiateViewController(identifier: "reading") as! ReadingViewController
//        vc.phraseToPass = { text in
//            self.nivel.text = text
//        }
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
//    }

    
    

}
