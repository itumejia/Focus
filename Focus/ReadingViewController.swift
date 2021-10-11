//
//  ReadingViewController.swift
//  Focus
//
//  Created by Karen Rugerio on 10/09/21.
//

import UIKit

class ReadingViewController: UIViewController {
    
//    public var letras = "La princesa arma un rompecabezas"
    
    @IBOutlet weak var phrase: UILabel!
    

    
    let phrases = ["La princesa arma un rompecabezas", "El Rayo McQueen corre en una carrera", "Remi el ratón de Ratatouille, cocina una quesadilla", "Mohana está hablando con su abuela", "Luca está comiendo", "Buzz y Woody se abrazan", "La pequeña niña Boo espanta al monstruo Sulli", "Valiente practica tiro que con arco", "Ralph el demoledor y Vanellope aprenden a manejar el auto", "Anna y Elsa se dan un abrazo en la nieve"]
    
    let phrasesHardLevels = ["El pequeño león Simba baila con Timón y Pumba", "Marlin el pez naranja y Dory el pez azul nadan con la tortugas"]
    
    var randomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.randomNumber = Int.random(in: 0...phrasesHardLevels.count-1)
        phrase.text = phrasesHardLevels[randomNumber]
        
    }
    //Asignaciones a la siguiente pantalla después de usar segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is Reading2ControllerView {
                let vc = segue.destination as? Reading2ControllerView
            vc?.frase = phrase.text!
            }
    }

}

