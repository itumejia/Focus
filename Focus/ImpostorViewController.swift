//
//  ImpostorViewController.swift
//  Focus
//
//  Created by davidzaratel on 10/3/21.
//

import UIKit

class ImpostorViewController: UIViewController {
    //Se crea una instancia de la clase ImpostorGame
    var game = ImpostorGame()
    
    //Cada boton es conectado como accion, la cual indica si el boton presionado es el impostor
    @IBAction func selectImpostor(_ sender: UIButton) {
        //Si es el impostor se avanza de nivel y se vuelven a cargar imagenes al azar
        if sender.tag == game.target{
            game.nextLevel()
            levelTxt.text = "Nivel " + String(game.level)
            loadImages()
        }
        else{
            //Si no, se acaba el juego y se navega a la pantalla de resultados
            performSegue(withIdentifier: "ImpostorToResults", sender: nil)
        }
    }
    
    //La etiqueta de nivel es conectada
    @IBOutlet weak var levelTxt: UILabel!
    
    //Los botones de las plantas son ligados como Outlet Collection para poder cambiar las imagenes
    @IBOutlet var plants: [UIButton]!
    
    //Se inicializa la pantalla
    override func viewDidLoad() {
        super.viewDidLoad()
        //Las imagenes de las plantas son generadas
        loadImages()
    }
    
    //Funcion que genera las imagenes de las plantas al azar para ser colocadas en los botones
    func loadImages() {
        //Se inicializan los valores del juego a como se encontraban en un inicio
        game.initializeArrays()
        //La siguiente variable almacenara la imagen que sera repetida 3 veces
        var repeated = 0
        //El siguiente ciclo genera dos botones al azar con la misma imagen excepto dos, uno que contendra la misma imagen que dos botones ya procesados y otro que sera el impostor
        while(game.plantButtons.count > 2){
            //Se generan dos indices al azar, para un boton y una imagen
            var randomButton = Int.random(in: 0...(game.plantButtons.count-1))
            let randomImage = Int.random(in: 0...(game.plantImages.count-1))
            //El boton elegido contendra la imagen elegida, ambos generados al azar.
            plants[game.plantButtons[randomButton]].setImage(UIImage(named: "Plant\(game.plantImages[randomImage])"), for: .normal)
            //Se elimina el boton elegido para que no se vuelva a repetir
            game.plantButtons.remove(at: randomButton)
            //Un nuevo boton es elegido para que contenga la misma imagen y el proceso anterior se repite
            randomButton = Int.random(in: 0...(game.plantButtons.count-1))
            plants[game.plantButtons[randomButton]].setImage(UIImage(named: "Plant\(game.plantImages[randomImage])"), for: .normal)
            //La variable repeated es actualizada y en la ultima iteracion del ciclo contendra el indice de la imagen de la ultima tupla
            repeated = game.plantImages[randomImage]
            game.plantButtons.remove(at: randomButton)
            game.plantImages.remove(at: randomImage)
        }
        //Se cambia la imagen de uno de los botones restantes
        plants[game.plantButtons[0]].setImage(UIImage(named: "Plant\(repeated)"), for: .normal)
        game.plantButtons.remove(at: 0)
        //Finalmente, se le asigna una imagen no repetida al impostor
        plants[game.plantButtons[0]].setImage(UIImage(named: "Plant\(game.plantImages[0])"), for: .normal)
        game.target = game.plantButtons[0]
        
    }
    
    //Funcion que se utiliza al finalizar el juego para cambiar a la pantalla de resultados
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let resultsScreen = segue.destination as? ResultsViewController {
                resultsScreen.gamePlayed = 3
                resultsScreen.score = game.level
            }
    }


}
