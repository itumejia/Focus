//
//  CrazyNumbersViewController.swift
//  Focus
//
//  Created by Ituriel Mejia on 07/09/21.
//

import UIKit

class CrazyNumbersViewController: UIViewController {


    @IBOutlet weak var numbersContainer: UIView!
    let board = CrazyNumbersBoard()
    let game = CrazyNumbersGame()

    @IBOutlet weak var labelLevel: UILabel!
    var randomNumbers: Array<Int> = [] //numbers to put in the screen
    
    //Values to set up layout
    var boardLimitX: CGFloat = 0
    var boardLimitY: CGFloat = 0
    var currentX: CGFloat = 0
    var currentY: CGFloat = 0
    var nextLevelY: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        newLevel() //Start level 1
    }

    //Start a new level function
    func newLevel() {
        randomNumbers = game.getRandomNumbers() //Get list of random numbers to populate the board
        board.randomNumbersCount = 0
        populateBoard()
        //Restart values
        boardLimitX = 0
        boardLimitY = 0
        currentX = 0
        currentY = 0
        nextLevelY = 0
    }

    //Function for tapping a number
    @IBAction func tapNumber(sender: UITapGestureRecognizer) {
        let label = sender.view as! UILabel
        let resultTap = game.selectNumber(numberSelected: Int(label.text!)!)
        //Correct answer
        if  resultTap == game.OK_CODE {
            label.removeFromSuperview()
            return
        }
        //Correct answer
        if resultTap == game.LOSE_CODE {
            performSegue(withIdentifier: "NumbersToResults", sender: nil)
            return
        }
        //Correct answer and finished with all the numbers
        if resultTap == game.WIN_CODE {
            label.removeFromSuperview()
            game.nextLevel()
            labelLevel.text = "Nivel " + String(game.getLevel())
            newLevel()
            board.addDifficulty()
            return
        }

    }

    //Put numbers in screen
    func populateBoard() {
        boardLimitX = numbersContainer.frame.width;
        boardLimitY = numbersContainer.frame.height;

        //Put numbers until all the vertical space is used
        while currentY < boardLimitY {
            //Change row when horizontal space is used
            while currentX < boardLimitX {
                addButton()
            }
            currentX = 0 //Restart the horizontal value (new row)
        }
        game.sortNumbers() //sort the final list of numbers

    }

    func addButton() {
        //Get dimensions of the number
        let text = board.getRandomNumber(randomNumbers: randomNumbers)
        let height = board.getRandomHeight()
        let width = board.getWidthFromHeightAndText(height: height, text: text)

        let nextX = currentX + width
        let nextY = currentY + height

        //Check if the number fits in the board
        if nextX < boardLimitX && nextY < boardLimitY {
            //Set up the label and add it to the board
            let number = UILabel(frame: CGRect(x: currentX, y: currentY, width: width, height: height))
            number.text = text
            number.textColor = board.getRandomColor() //getRandomColor()
            number.adjustsFontSizeToFitWidth = true
            number.numberOfLines = 0
            number.minimumScaleFactor = 0.1
            number.font = UIFont.boldSystemFont(ofSize: 400) //Font size maximo del numero (se ajusta a la height)

            //Add gesture
            let tap = UITapGestureRecognizer(target: self, action: #selector(CrazyNumbersViewController.tapNumber))
            number.isUserInteractionEnabled = true
            number.addGestureRecognizer(tap)

            //Add label to the screen and add the number to the final list
            numbersContainer.addSubview(number)
            game.addNumberToNumbers(number: Int(text)!)
        }
        //Did not fit horrizontally
        else if nextX >= boardLimitX {
            currentY = nextLevelY
        }
        currentX = nextX
        updateCurrentY(newHeight: nextY)
    }

    //Set up Y value when changing row
    func updateCurrentY(newHeight: CGFloat) {
        nextLevelY = max(newHeight, nextLevelY)
    }
    
    //Pass values when changing to results screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultsScreen = segue.destination as? ResultsViewController {
            resultsScreen.gamePlayed = 1
            resultsScreen.score = game.getLevel()
        }
    }

}


