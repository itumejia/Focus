//
//  ZigZagViewController.swift
//  Focus
//
//  Created by user197888 on 10/11/21.
//

import UIKit

class ZigZagViewController: UIViewController {
    
    let game = ZigZagGame()
    
    
    @IBOutlet var normalTiles: [UIButton]!
    
    @IBOutlet weak var startingTile: UIButton!
    
    @IBOutlet weak var endingTile: UIButton!
    
    @IBAction func startingGame(_ sender: UIButton) {
        if(!game.gameStarted && game.finishedWaitTime){
            game.startGame()
            game.lastTouchedTile = -1
            startingTile.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
        }
    }
    @IBOutlet weak var levelLabel: UILabel!
    
    @IBAction func endGame(_ sender: UIButton) {
        if(game.lastTouchedTile == 2 || game.lastTouchedTile == 6){
            if game.coinsCollected == 3{
                game.nextLevel()
                resetLevel()
                levelLabel.text = "Nivel " + String(game.level)
            }
            else{
                performSegue(withIdentifier: "ZigzagToResults", sender: nil)
            }
        }
            
    }
    
    @IBAction func touchingNormalTile(_ sender: UIButton) {
        if game.gameStarted && game.finishedWaitTime{
            var touchable = false
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
            if touchable{
                if sender == endingTile{
                    game.endingTileTouched = true
                }
                sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                if game.coinTiles.contains(sender.tag){
                    game.coinsCollected += 1
                }
                if game.isDeadend(currentTile: game.lastTouchedTile){
                    performSegue(withIdentifier: "ZigzagToResults", sender: nil)
                }
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateCoins()

    }
    
    func checkIfTouchable(tag: Int)->Bool{
        if(game.touchedTiles[tag] == 1){
            game.lastTouchedTile = tag
            game.touchedTiles[tag] = 0
           return true
        }
        return false
    }
    
    
    
    func dissapearCoins(){
        var time = 4.0
        if game.level <= 5{
            time = 4.0
        }
        else if game.level > 5 && game.level <= 10{
            time = 3.0
        }
        else if game.level > 10 && game.level <= 20{
            time = 2.0
        }
        else if game.level > 20{
            time = 1.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + time) { // Change `2.0` to the desired number of seconds.
            self.game.finishedWaitTime = true
            var temporalCoins = self.game.coinTiles
            for _ in 0...2{
                self.normalTiles[temporalCoins[0]].setImage(nil, for: .normal)
                temporalCoins.remove(at: 0)
            }
        }

    }
    
    
    func generateCoins(){
        for _ in 1...3{
            let randomNumber = Int.random(in: 0...(game.tilesArray.count-1))
            let image = UIImage(named: "CoinImage")
            
            normalTiles[game.tilesArray[randomNumber]].setImage(image, for: UIControl.State.normal)
            normalTiles[game.tilesArray[randomNumber]].contentVerticalAlignment = .fill
            normalTiles[game.tilesArray[randomNumber]].contentHorizontalAlignment = .fill
            normalTiles[game.tilesArray[randomNumber]].imageEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
            
            game.coinTiles.append(game.tilesArray[randomNumber])
            game.tilesArray.remove(at: randomNumber)
        }
        dissapearCoins()
    }
    
    func resetLevel(){
        game.restoreValues()
        restoreButtonImages()
        generateCoins()
    }
    
    func restoreButtonImages(){
        for tiles in normalTiles{
            tiles.backgroundColor = UIColor(red: (88/255.0), green: (90/255.0), blue: (120/255.0), alpha: 1)
        }
        startingTile.backgroundColor = endingTile.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let resultsScreen = segue.destination as? ResultsViewController {
                resultsScreen.gamePlayed = 5
                resultsScreen.score = game.level
            }
    }

}
