//
//  ReadingViewController.swift
//  Focus
//
//  Created by Karen Rugerio on 10/09/21.
//

import UIKit

class ReadingViewController: UIViewController {
    
    
    @IBOutlet weak var phrase: UILabel!
    

    //Phrases to play definition
    let phrases = [
        "La princesa arma un rompecabezas", //0
        "El Rayo McQueen corre en una carrera",
        "Remi el ratón de Ratatouille, cocina una quesadilla",
        "Mohana está hablando con su abuela",
        "Luca está comiendo",
        "Buzz y Woody se abrazan", //5
        "La pequeña niña Boo espanta al monstruo Sulli",
        "Valiente practica tiro con arco",
        "Ralph el demoledor y Vanellope aprenden a manejar el auto",
        "Anna y Elsa se dan un abrazo en la nieve",
        "La princesa está sentada sobre unas rocas en el lago", //10
        "El Rayo McQueen platica con Sally en el campo",
        "Moana navega por el mar junto a su amigo Maui",
        "Luca descubre nuevas cosas mientras esstudia con su amiga Julia",
        "Woody el vaquero señala a Buzz mientras ríe",
        "Sully el monstruo le da las buenas noches a la pequeña boo", //15
        "Valiente cena con sus tres hermanos y su papá",
        "Ralph el demoledor escala un árbol de dulce",
        "Ana y Elsa están en el campo y no hay nieve",
        "Hiro y Baymax se dan un abrazo",
        "Hiro y Baymax vuelan sobre la ciudad", //20
        "La princesa Tiana y el príncipe sapo Naveen platican en el balcón",
        "Tiana está trabajando en el restaurante",
        "Alegría y Tristeza observan el pensamiento en forma de pelota amarilla",
        "Alegría y Tristeza observan el pensamiento en forma de pelota azul",
        "Judy Hopps la conejita y Nick el zorro estudian para ser policias", //25
        "Judy Hopps la conejita y Nick el zorro se toman una foto",
        "Carl el abuelito de UP vuela en su casa con globos",
        "Russel y Carl caminan por la selva carrgando su casa",
        "Jack Jack se come una paleta",
        "Jack Jack se come una galleta", //30
        "Walle y Eva observan una planta",
        "Walle y Eva observan un foco",
        "Chimuelo e Hipo se abrazan",
        "Chimuelo e Hipo vuelan sobre una montaña",
        "El pequeño león Simba baila con Timón y Pumba", //35
        "Marlin el pez naranja y Dory el pez azul nadan con las tortugas",
        "Remi da los ultimos toques a su famoso platillo Ratatouille con una cuchara"] //37
    
    //Selection of the phrase
    var randomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.randomNumber = Int.random(in: 0...phrases.count-1)
        //Set the random phrase to the screen label
        phrase.text = phrases[randomNumber]
        
    }
    //Assign values to the next screen after using segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is Reading2ControllerView {
                let vc = segue.destination as? Reading2ControllerView
            //catch the phrase in the next view controller
            vc?.frase = phrase.text!
            }
    }

}

