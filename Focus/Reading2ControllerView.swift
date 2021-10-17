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
        UIImage(named: "enredados"), //Enredados 0
        UIImage(named: "enredados2"),
        UIImage(named: "cars"), //Cars 2
        UIImage(named: "cars2"),
        UIImage(named: "rat"), //Ratatouille 4
        UIImage(named: "rat2"),
        UIImage(named: "moana"), //Moana 6
        UIImage(named: "moana2"),
        UIImage(named: "luca"), //Luca 8
        UIImage(named: "luca2"),
        UIImage(named: "toystory"), //Toy Story 10
        UIImage(named: "toystory2"),
        UIImage(named: "monsters"), //Monsters Inc 12
        UIImage(named: "monsters2"),
        UIImage(named: "valiente"), //Valiente 14
        UIImage(named: "valiente2"),
        UIImage(named: "ralph"), //Ralph el demoledor 16
        UIImage(named: "ralph2"),
        UIImage(named: "frozen"), //Frozen
        UIImage(named: "frozen2"),
        UIImage(named: "bighero"), //Big Hero 20
        UIImage(named: "bighero2"),
        UIImage(named: "tiana"), //Tiana 22
        UIImage(named: "tiana2"),
        UIImage(named: "intensamente"), //Intensamente 24
        UIImage(named: "intensamente2"),
        UIImage(named: "zootopia"), //Zootopia 26
        UIImage(named: "zootopia2"),
        UIImage(named: "up"), //UP 28
        UIImage(named: "up2"),
        UIImage(named: "increibles"), //Increibles 30
        UIImage(named: "increibles2"),
        UIImage(named: "walle"), //Walle 32
        UIImage(named: "walle2"),
        UIImage(named: "train"), //Como entrenar a tu dragon 34
        UIImage(named: "train2"),
        
        
    ]
     let imagesHighLevels = [
        UIImage(named: "leon"), // reyLeon
        UIImage(named: "leon2"),
        UIImage(named: "nemo"), //Nemo
        UIImage(named: "nemo2"),
     ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        var contador2 = Reading2ControllerView.cont
        nivel.text = (nivel.text ?? "") + "\(contador2)"
        linkImages()
    }
    
    func linkImages(){
        let vc = storyboard? .instantiateViewController(identifier: "reading") as! ReadingViewController
        
        if frase == vc.phrases[35] { //LionKing
            img1.image = imagesHighLevels[0]
            img2.image = imagesHighLevels[1]
        } else if frase == vc.phrases[36]{ //Nemo
            img1.image = imagesHighLevels[3]
            img2.image = imagesHighLevels[2]
        } else if (frase == vc.phrases[0] || frase == vc.phrases[10]){   //tangled
            img1.image = images[0]
            img2.image = images[1]
        } else if (frase == vc.phrases[1] || frase == vc.phrases[11]) {   //cars
            img1.image = images[2]
            img2.image = images[3]
        } else if (frase == vc.phrases[2] || frase == vc.phrases[37]){   //ratatouille
            img1.image = images[4]
            img2.image = images[5]
        } else if (frase == vc.phrases[3] || frase == vc.phrases[12]) {   //moana
            img1.image = images[6]
            img2.image = images[7]
        } else if (frase == vc.phrases[4] || frase == vc.phrases[13]) {   //luca
            img1.image = images[8]
            img2.image = images[9]
        } else if (frase == vc.phrases[5] || frase == vc.phrases[14]) {   //toystory
            img1.image = images[10]
            img2.image = images[11]
        } else if (frase == vc.phrases[6] || frase == vc.phrases[15]) {   //monsters inc
            img1.image = images[12]
            img2.image = images[13]
        } else if (frase == vc.phrases[7] || frase == vc.phrases[16]) {   //brave
            img1.image = images[14]
            img2.image = images[15]
        } else if (frase == vc.phrases[8] || frase == vc.phrases[17]) {   //wreck it ralph
            img1.image = images[16]
            img2.image = images[17]
        } else if (frase == vc.phrases[9] || frase == vc.phrases[18]) {   //frozen BIEEEEN
            img1.image = images[18]
            img2.image = images[19]
        } else if (frase == vc.phrases[19] || frase == vc.phrases[20]) {   //big hero
            img1.image = images[20]
            img2.image = images[21]
        } else if (frase == vc.phrases[21] || frase == vc.phrases[22]) {   //tiana
            img1.image = images[22]
            img2.image = images[23]
        } else if (frase == vc.phrases[23] || frase == vc.phrases[24]) {   //intensamente
            img1.image = images[24]
            img2.image = images[25]
        } else if (frase == vc.phrases[25] || frase == vc.phrases[26]) {   //zootopia
            img1.image = images[26]
            img2.image = images[27]
        } else if (frase == vc.phrases[27] || frase == vc.phrases[28]) {   //UP
            img1.image = images[28]
            img2.image = images[29]
        } else if (frase == vc.phrases[29] || frase == vc.phrases[30]) {   //Increibles
            img1.image = images[30]
            img2.image = images[31]
        } else if (frase == vc.phrases[31] || frase == vc.phrases[32]) {   //Walle
            img1.image = images[32]
            img2.image = images[33]
        } else if (frase == vc.phrases[33] || frase == vc.phrases[34]) {   //Dragon
            img1.image = images[34]
            img2.image = images[35]
        }
        
    }
    
    //19 y 20 hiro
    //21 y 22 tiana
    //23 y 24 intensa
    //25 y 26 zoo
    //27 y 28 UP
    //29 y 30 Increibles
    //31 y 32 Walle
    //33 y 34 Dragon
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        
        let vc = storyboard? .instantiateViewController(identifier: "reading") as! ReadingViewController
        
        if (frase == vc.phrases[35] && (sender.view as! UIImageView).image == UIImage(named: "leon2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[36] && (sender.view as! UIImageView).image == UIImage(named: "nemo2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[0] && (sender.view as! UIImageView).image == UIImage(named: "enredados2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[10] && (sender.view as! UIImageView).image == UIImage(named: "enredados")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[1] && (sender.view as! UIImageView).image == UIImage(named: "cars2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[11] && (sender.view as! UIImageView).image == UIImage(named: "cars")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        }else if (frase == vc.phrases[2] && (sender.view as! UIImageView).image == UIImage(named: "rat")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[37] && (sender.view as! UIImageView).image == UIImage(named: "rat2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[3] && (sender.view as! UIImageView).image == UIImage(named: "moana")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[12] && (sender.view as! UIImageView).image == UIImage(named: "moana2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[4] && (sender.view as! UIImageView).image == UIImage(named: "luca")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[13] && (sender.view as! UIImageView).image == UIImage(named: "luca2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[5] && (sender.view as! UIImageView).image == UIImage(named: "toystory2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[14] && (sender.view as! UIImageView).image == UIImage(named: "toystory")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[6] && (sender.view as! UIImageView).image == UIImage(named: "monsters2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[15] && (sender.view as! UIImageView).image == UIImage(named: "monsters")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[7] && (sender.view as! UIImageView).image == UIImage(named: "valiente2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[16] && (sender.view as! UIImageView).image == UIImage(named: "valiente")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[8] && (sender.view as! UIImageView).image == UIImage(named: "ralph")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[17] && (sender.view as! UIImageView).image == UIImage(named: "ralph2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[9] && (sender.view as! UIImageView).image == UIImage(named: "frozen")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[18] && (sender.view as! UIImageView).image == UIImage(named: "frozen2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
            
            
            
        } else if (frase == vc.phrases[19] && (sender.view as! UIImageView).image == UIImage(named: "bighero")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[20] && (sender.view as! UIImageView).image == UIImage(named: "bighero2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[21] && (sender.view as! UIImageView).image == UIImage(named: "tiana2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[22] && (sender.view as! UIImageView).image == UIImage(named: "tiana")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[23] && (sender.view as! UIImageView).image == UIImage(named: "intensamente2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[24] && (sender.view as! UIImageView).image == UIImage(named: "intensamente")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[25] && (sender.view as! UIImageView).image == UIImage(named: "zootopia")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[26] && (sender.view as! UIImageView).image == UIImage(named: "zootopia2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[27] && (sender.view as! UIImageView).image == UIImage(named: "up")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[28] && (sender.view as! UIImageView).image == UIImage(named: "up2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[29] && (sender.view as! UIImageView).image == UIImage(named: "increibles")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[30] && (sender.view as! UIImageView).image == UIImage(named: "increibles2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[31] && (sender.view as! UIImageView).image == UIImage(named: "walle")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[32] && (sender.view as! UIImageView).image == UIImage(named: "walle2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
        } else if (frase == vc.phrases[33] && (sender.view as! UIImageView).image == UIImage(named: "train")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
        } else if (frase == vc.phrases[34] && (sender.view as! UIImageView).image == UIImage(named: "train2")){
            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
            nextScreen() //Pasa de una pantalla a otra
            
//        } else if (frase == vc.phrases[32] && (sender.view as! UIImageView).image == UIImage(named: "train")){
//            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
//            nextScreen() //Pasa de una pantalla a otra
//        } else if (frase == vc.phrases[36] && (sender.view as! UIImageView).image == UIImage(named: "train2")){
//            Reading2ControllerView.cont = Reading2ControllerView.cont + 1
//            nextScreen() //Pasa de una pantalla a otra
            
        } else {
            performSegue(withIdentifier: "ReadingToResults", sender: nil)
            
        }
        
    }
    
    func nextScreen(){
        let vc = storyboard? .instantiateViewController(identifier: "reading") as! ReadingViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let resultsScreen = segue.destination as? ResultsViewController {
                resultsScreen.gamePlayed = 4
                resultsScreen.score = Reading2ControllerView.cont
                Reading2ControllerView.cont = 1
            }
        }

    

}
