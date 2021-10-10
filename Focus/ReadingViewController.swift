//
//  ReadingViewController.swift
//  Focus
//
//  Created by Karen Rugerio on 10/09/21.
//

import UIKit

class ReadingViewController: UIViewController {
    
    @IBOutlet weak var phrase: UILabel!
    
    
    let phrases = ["La princesa arma un rompecabezas", "El Rayo McQueen corre en una carrera", "Remi el ratón de Ratatouille, cocina una quesadilla", "Mohana está hablando con su abuela", "Luca está comiendo", "Buzz y Woody se abrazan", "La pequeña niña Boo espanta al monstruo Sulli", "Valiente practica tiro que con arco", "Ralph el demoledor y Vanellope aprenden a manejar el auto", "Anna y Elsa se dan un abrazo en la nieve"]
    
    let phrasesHardLevels = ["El pequeño león Simba baila con Timón y Pumba", "Marlin el pez naranja y Dory el pez azul nadan con la tortugas"]
    
    public var phraseToPass: ((String?)->Void)?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        phrase.text = phrases.randomElement()! //Elige una frase al azar
        
    }
    

    @IBAction func startPlaying(_ sender: Any) {
        //Para pasar de una pantalla a otra
        let vc = storyboard? .instantiateViewController(identifier: "other") as! Reading2ControllerView
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
        //para pasar la frase de una pantalla a otra
        phraseToPass?(phrase.text)
    }
    
    
    
    

}

