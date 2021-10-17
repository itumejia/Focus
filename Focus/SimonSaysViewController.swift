//
//  ViewController.swift
//  SimonSays
//
//  Created by user191106 on 10/8/21..
//

import UIKit
import AVFoundation

class SimonSaysViewController:UIViewController {

    @IBOutlet weak var streakCount: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    var userTurn = false
        var array = [Int]()
        var count = 0

        func flashAndPlaySound(number: Int) {
            switch(number) {
            case 0: UIView.animate(withDuration: 1, delay: 0, animations:
                { () -> Void in
                        self.lbl1.alpha = 0.5
                        self.lbl1.alpha = 1
                })
         
                break
            case 1:
                UIView.animate(withDuration: 1, delay: 0, animations:
                    { () -> Void in
                        
                        self.lbl2.alpha = 0.5
                        self.lbl2.alpha = 1

                        
                    })
               
                break
            case 2: UIView.animate(withDuration: 2, delay: 1, animations: {
                self.lbl3.alpha = 0.5
                self.lbl3.alpha = 1
           }, completion: nil)
                break
            case 3: UIView.animate(withDuration: 1, delay: 0, animations:
                { () -> Void in
                    self.lbl4.alpha = 0.5
                    self.lbl4.alpha = 1
                })
               
                break
            case 4: UIView.animate(withDuration: 1, delay: 0, animations:
                { () -> Void in
                        self.lbl5.alpha = 0.5
                        self.lbl5.alpha = 1
                })
                break
            case 5: UIView.animate(withDuration: 1, delay: 0, animations:
                { () -> Void in
                        self.lbl6.alpha = 0.5
                        self.lbl6.alpha = 1
                })
                break
            case 6: UIView.animate(withDuration: 1, delay: 0, animations:
                { () -> Void in
                        self.lbl7.alpha = 0.5
                        self.lbl7.alpha = 1
                })
              
                break
            case 7: UIView.animate(withDuration: 1, delay: 0, animations:
                { () -> Void in
                        self.lbl8.alpha = 0.5
                        self.lbl8.alpha = 1
                })
             
                break
            default: UIView.animate(withDuration: 1, delay: 0, animations:
                { () -> Void in
                        self.lbl9.alpha = 0.5
                        self.lbl9.alpha = 1
                })
                break

            }
            
        }

        func playAll() -> Void {
            var delay = 0
            for number in array {
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(delay), execute: {
                self.flashAndPlaySound(number: number)
            })
            delay = delay + 1
            }
        }

    @objc func getNext() -> Void {
            userTurn = false
            let next = Int(arc4random_uniform(4))
            array.append(next)
            playAll()
            userTurn = true
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func handleTap2(_ sender: UITapGestureRecognizer) {
        if userTurn && count < array.count {
                    var number = 0
             let label = sender.view as! UILabel
                    if label == lbl1 {
                        number = 0
                    } else if  label == lbl2 {
                        number = 1
                    } else if label == lbl3  {
                        number = 2
                    } else if label == lbl4  {
                        number = 3
                    }  else if label == lbl5  {
                        number = 4
                    }  else if label == lbl6  {
                        number = 5
                    }  else if label == lbl7  {
                        number = 6
                    }  else if label == lbl8  {
                        number = 7
                    }  else if label == lbl9  {
                        number = 8
                    }

            print(number)
                        flashAndPlaySound(number: number)
                        if number != array[count] {
                            performSegue(withIdentifier: "SimonToResults", sender: nil)
                            userTurn = false
                        }
                        else {
                            count = count + 1
                            streakCount.text = "Puntos: " + String(count)
                            if count == array.count {
                                count = 0
                                _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(getNext), userInfo: nil, repeats: false)
                            }
                        }
            
                    
        }
    }
    
    
    @IBAction func startGame(_ sender: UIButton) {
        sender.isHidden = true
        count = 0
        array.removeAll()
        streakCount.text =  "Puntos: 0"
        getNext()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let resultsScreen = segue.destination as? ResultsViewController {
                resultsScreen.gamePlayed = 0
                resultsScreen.score = array.count
            }
        }
    
    
}



