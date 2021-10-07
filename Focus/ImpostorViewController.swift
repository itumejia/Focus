//
//  ImpostorViewController.swift
//  Focus
//
//  Created by user197888 on 10/3/21.
//

import UIKit

class ImpostorViewController: UIViewController {

    @IBAction func selectImpostor(_ sender: UIButton) {
    }
    @IBOutlet var plants: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages()
        
    }
    func loadImages(){
        for plant in plants {
            plant.setImage(UIImage(named: "Plant4"), for: .normal)
        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
