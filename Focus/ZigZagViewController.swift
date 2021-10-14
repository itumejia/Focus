//
//  ZigZagViewController.swift
//  Focus
//
//  Created by user197888 on 10/11/21.
//

import UIKit

class ZigZagViewController: UIViewController {
    
    var tilesArray = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
    var coinTiles = [Int] ()
    var touchedTiles = [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
    var lastTouchedTile = -2
    var gameStarted = false
    
    @IBOutlet var normalTiles: [UIButton]!
    
    @IBOutlet weak var startingTile: UIButton!
    
    @IBOutlet weak var endingTile: UIButton!
    
    @IBAction func startingGame(_ sender: UIButton) {
        if(!gameStarted){
            gameStarted = true
            lastTouchedTile = -1
            startingTile.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
        }
    }
    @IBOutlet weak var levelLabel: UILabel!
    
    @IBAction func endGame(_ sender: UIButton) {
        if(lastTouchedTile == 2 || lastTouchedTile == 6){
            levelLabel.text = "Ganado"
        }
            
    }
    
    @IBAction func touchingNormalTile(_ sender: UIButton) {
        if gameStarted{
            if lastTouchedTile == -1 && (sender.tag == 11 || sender.tag == 7) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 0 && (sender.tag == 1 || sender.tag == 3) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 1 && (sender.tag == 0 || sender.tag == 2 || sender.tag == 4) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 2 && (sender == endingTile || sender.tag == 1 || sender.tag == 5) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 3 && (sender.tag == 0 || sender.tag == 4 || sender.tag == 7) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 4 && (sender.tag == 1 || sender.tag == 3 || sender.tag == 5 || sender.tag == 8) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 5 && (sender.tag == 2 || sender.tag == 4 || sender.tag == 6 || sender.tag == 9) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 6 && (sender == endingTile || sender.tag == 5 || sender.tag == 10) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 7 && (sender.tag == 3 || sender == startingTile || sender.tag == 8 ) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 8 && (sender.tag == 7 || sender.tag == 4 || sender.tag == 9 || sender.tag == 11) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 9 && (sender.tag == 5 || sender.tag == 8 || sender.tag == 10 || sender.tag == 12) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 10 && (sender.tag == 6 || sender.tag == 9 || sender.tag == 13) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 11 && (sender.tag == 8 || sender.tag == 12) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 12 && (sender.tag == 11 || sender.tag == 9 || sender.tag == 13) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
            else if lastTouchedTile == 13 && (sender.tag == 12 || sender.tag == 10) {
                if checkIfTouchable(tag: sender.tag){
                    sender.backgroundColor = UIColor(red: (158/255.0), green: (160/255.0), blue: (183/255.0), alpha: 1)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateCoins()
        // Do any additional setup after loading the view.
    }
    
    func checkIfTouchable(tag: Int)->Bool{
        if(touchedTiles[tag] == 1){
            lastTouchedTile = tag
            touchedTiles[tag] = 0
           return true
        }
        return false
    }
    
    
    
    func dissapearCoins(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { // Change `2.0` to the desired number of seconds.
            for _ in 0...2{
                self.normalTiles[self.coinTiles[0]].setImage(nil, for: .normal)
//                print("Coins")
//                print(self.coinTiles[0])
                self.coinTiles.remove(at: 0)
            }
        }

    }
    
    
    func generateCoins(){
        initializeArrays()
        for _ in 1...3{
            let randomNumber = Int.random(in: 0...(tilesArray.count-1))
            let image = UIImage(named: "Coins")
            
            
            normalTiles[tilesArray[randomNumber]].setImage(image, for: UIControl.State.normal)
            normalTiles[tilesArray[randomNumber]].contentVerticalAlignment = .fill
            normalTiles[tilesArray[randomNumber]].contentHorizontalAlignment = .fill
//            normalTiles[randomNumber].imageView?.contentMode = .scaleAspectFit
            normalTiles[tilesArray[randomNumber]].imageEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
            coinTiles.append(tilesArray[randomNumber])
            tilesArray.remove(at: randomNumber)
//            print("Tiles")
//            print(randomNumber)
        }
        dissapearCoins()
    }
    
    func initializeArrays(){
        tilesArray = [0,1,2,3,4,5,6,7,8,9]
    }

    

}
