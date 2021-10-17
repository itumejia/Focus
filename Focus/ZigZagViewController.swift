//
//  ZigZagViewController.swift
//  Focus
//
//  Created by davidzaratel on 10/11/21.
//

import UIKit

class ZigZagViewController: UIViewController {
    //Se crea un objeto de la clase ZigZag Game
    let game = ZigZagGame()
    
    //Las casillas normales se conectan como Outlet Collection
    @IBOutlet var normalTiles: [UIButton]!
    //La casilla inicial se liga como outlet
    @IBOutlet weak var startingTile: UIButton!
    //Asi como la casilla final
    @IBOutlet weak var endingTile: UIButton!
    
    //La casilla inicial es ligada como accion
    @IBAction func startingGame(_ sender: UIButton) {
        //Solamente podra habilitarse en caso de que el juego no haya empezado y el tiempo de espera de las monedas haya terminado
        if(!game.gameStarted && game.finishedWaitTime){
            //El juego inicia
            game.startGame()
            //La ultima casilla apretada es la casilla inicial, con identificador = -1
            game.lastTouchedTile = -1
            //Se cambia el background de la casilla para indicar al usuario que ha sido presionada
            startingTile.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
        }
    }
    
    //Se conecta el Label que indicara el nivel en que se encuentra el usuario
    @IBOutlet weak var levelLabel: UILabel!
    
    //Se le asigna una accion a la casilla final
    @IBAction func endGame(_ sender: UIButton) {
        //Solamente podra presionarse este boton en caso de que el usuario se encuentre en una casilla adyacente
        if(game.lastTouchedTile == 2 || game.lastTouchedTile == 6){
            //Si el numero de monedas recolectadas por el usuario es igual a 3 significa que recolecto todas, en caswo contrario esto no se cumplira
            if game.coinsCollected == 3{
                //Se pasa al siguiente nivel
                game.nextLevel()
                //Se recuperan los valores iniciales del juego
                resetLevel()
                //La etiqueta de nivel es actualizada con el nivel correspondiente
                levelLabel.text = "Nivel " + String(game.level)
            }
            else{
                //En caso contrario, se termina el juego y se navega a la pantalla de resultados de la partida
                performSegue(withIdentifier: "ZigzagToResults", sender: nil)
            }
        }
            
    }
    
    //Las casillas normales son enlazadas como accion, aqui se comprueba si es posible avanzar a una casilla adyacente
    @IBAction func touchingNormalTile(_ sender: UIButton) {
        //Si el juego ha comenzado y el tiempo de espera de las monedas ha terminado, significa que es posible habilitar una casilla normal
        if game.gameStarted && game.finishedWaitTime{
            //Se crea una variable llamada touchable, la cual determinara si es posible avanzar a una casilla adyacente
            var touchable = false
            //A continuacion se encuentran diferentes condicionales, los cuales, dependiendo de la ultima casilla presionada podran dictar si la casilla que fue presionada puede ser utilizable.
            if game.lastTouchedTile == -1 && (sender.tag == 11 || sender.tag == 7) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 0 && (sender.tag == 1 || sender.tag == 3) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 1 && (sender.tag == 0 || sender.tag == 2 || sender.tag == 4) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 2 && (sender == endingTile || sender.tag == 1 || sender.tag == 5) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 3 && (sender.tag == 0 || sender.tag == 4 || sender.tag == 7) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 4 && (sender.tag == 1 || sender.tag == 3 || sender.tag == 5 || sender.tag == 8) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 5 && (sender.tag == 2 || sender.tag == 4 || sender.tag == 6 || sender.tag == 9) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 6 && (sender == endingTile || sender.tag == 5 || sender.tag == 10) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 7 && (sender.tag == 3 || sender == startingTile || sender.tag == 8 ) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 8 && (sender.tag == 7 || sender.tag == 4 || sender.tag == 9 || sender.tag == 11) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 9 && (sender.tag == 5 || sender.tag == 8 || sender.tag == 10 || sender.tag == 12) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 10 && (sender.tag == 6 || sender.tag == 9 || sender.tag == 13) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 11 && (sender.tag == 8 || sender.tag == 12) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 12 && (sender.tag == 11 || sender.tag == 9 || sender.tag == 13) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            else if game.lastTouchedTile == 13 && (sender.tag == 12 || sender.tag == 10) {
                touchable = checkIfTouchable(tag: sender.tag)
            }
            //En caso de que la ultima casilla presionada sea adyacente a la que se desea presionar y todavia se encuentre disponible, es posible presionarla
            if touchable{
                //El siguiente condicional sirve para identificar si el ultimo boton ha sido presionado (nunca se llegara a este caso puesto que la casilla final no esta ligada a las normales, sin embargo, es necesario para los proecesos posteriores)
                if sender == endingTile{
                    game.endingTileTouched = true
                }
                //Se cambia el color del boton para que el usuario pueda saber que el boton fue presionado
                sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                //Si la casilla presionada se encuentra dentro de las casillas donde se encuentran las monedas, se aumentara en 1 la cantidad de monedas recolectadas
                if game.coinTiles.contains(sender.tag){
                    game.coinsCollected += 1
                }
                //Se comprueba si la casilla presionada es un callejon sin salida, es decir, si ya no cuenta con movimientos por realizar
                if game.isDeadend(currentTile: game.lastTouchedTile){
                    //Si es asi, se termina la partida y se navega a la pantalla de resultados
                    performSegue(withIdentifier: "ZigzagToResults", sender: nil)
                }
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Se generan las monedas del nivel
        generateCoins()

    }
    
    //En esta funcion se revisa si la casilla presionada esta habilitada o no, regresa un booleano indicando esta accion
    func checkIfTouchable(tag: Int)->Bool{
        //Si la casilla esta disponible se actualiza el valor de la ultima casilla oprimida y se convierte en una casilla ya utilizada
        if(game.touchedTiles[tag] == 1){
            game.lastTouchedTile = tag
            game.touchedTiles[tag] = 0
           return true
        }
        return false
    }
    
    
    //A continuacion se encuentra la funcion que se encarga de desaparecer las monedas del tablero
    func dissapearCoins(){
        var time = 4.0
        //En caso de que se encuentre en los primeros cinco niveles, el tiempo de espera de las monedsa es de 4 segundos
        if game.level <= 5{
            time = 4.0
        }
        //En caso de que se encuentre en los niveles del 6 - 10, el tiempo de espera de las monedsa es de 3 segundos
        else if game.level > 5 && game.level <= 10{
            time = 3.0
        }
        //En caso de que se encuentre en los niveles del 11 - 20, el tiempo de espera de las monedsa es de 2 segundos
        else if game.level > 10 && game.level <= 20{
            time = 2.0
        }
        //En caso de que se encuentre en niveles posteriores al 20, el tiempo de espera de las monedsa es de 1 segundos
        else if game.level > 20{
            time = 1.0
        }
        //Se esperan los segundos necesarios para desaparecer las monedas
        DispatchQueue.main.asyncAfter(deadline: .now() + time) {
            //Ahora, el tiempo de espera ha terminado
            self.game.finishedWaitTime = true
            //Se crea un arreglo temporal para poder eliminar las imagenes de las casillas con monedas
            var temporalCoins = self.game.coinTiles
            for _ in 0...2{
                self.normalTiles[temporalCoins[0]].setImage(nil, for: .normal)
                temporalCoins.remove(at: 0)
            }
        }

    }
    
    //Las monedas del juego son generadas
    func generateCoins(){
        //Ciclo for que servira para generar las 3 monedas del juego
        for _ in 1...3{
            //Se elige un numero al azar para la casilla que contendra una moneda
            let randomNumber = Int.random(in: 0...(game.tilesArray.count-1))
            //La imagen de la moneda es creada
            let image = UIImage(named: "CoinImage")
            //La imagen de la moneda es asignada a el boton elegido al azar y se reducen sus dimensiones para que sea correctamente desplegada
            normalTiles[game.tilesArray[randomNumber]].setImage(image, for: UIControl.State.normal)
            normalTiles[game.tilesArray[randomNumber]].contentVerticalAlignment = .fill
            normalTiles[game.tilesArray[randomNumber]].contentHorizontalAlignment = .fill
            normalTiles[game.tilesArray[randomNumber]].imageEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
            
            //Se registra la posicion de las monedas en el arreglo coinTiles
            game.coinTiles.append(game.tilesArray[randomNumber])
            game.tilesArray.remove(at: randomNumber)
        }
        //Se llama a la funcion que desaparece las monedas
        dissapearCoins()
    }
    
    //Funcion que reinicia los valores del juego para un nuevo nivel
    func resetLevel(){
        game.restoreValues()
        restoreButtonImages()
        generateCoins()
    }
    
    //Los botones que fueron oprimidos regresan a su estado original
    func restoreButtonImages(){
        for tiles in normalTiles{
            tiles.backgroundColor = UIColor(red: (88/255.0), green: (90/255.0), blue: (120/255.0), alpha: 1)
        }
        startingTile.backgroundColor = endingTile.backgroundColor
    }
    
    //Funcion que realiza el cambio a la pantalla de resultados
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let resultsScreen = segue.destination as? ResultsViewController {
                resultsScreen.gamePlayed = 5
                resultsScreen.score = game.level
            }
    }

}
