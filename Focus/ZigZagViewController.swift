//
//  ZigZagViewController.swift
//  Focus
//
//  Created by user197888 on 10/11/21.
//

import UIKit

class ZigZagViewController: UIViewController {
    
    var tilesArray = [0,1,2,3,4,5,6,7,8,9]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateCoins()
        // Do any additional setup after loading the view.
    }
    
    
    func generateCoins(){
        initializeArrays()
        for _ in 1...3{
            let randomIndex = Int.random(in: 0...tilesArray.count - 1)
            //Build image view
            let imageName = "Coins.svg"
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image!)

            //Get Button frame
            let xCoordinate = tiles[1].frame.origin.x
            let yCoordinate = tiles[1].frame.origin.y
            imageView.frame = CGRect(x: 100, y: 100, width: 60, height: 60)
            print(xCoordinate)
            print(yCoordinate)
            view.addSubview(imageView)
        }
    }
    
    func initializeArrays(){
        tilesArray = [0,1,2,3,4,5,6,7,8,9]
    }

    

}
