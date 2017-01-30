//
//  ViewController.swift
//  WarGame
//
//  Created by Geert-Jan Kruijff on 19/01/17.
//  Copyright © 2017 Geert-Jan Kruijff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore : Int = 0

    @IBOutlet weak var leftImageView : UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore : Int = 0
    
    let cardNames = ["card2", "card3", "card4", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any) {
        // Randomize left number in the range [0..13]
        let leftNumber = Int(arc4random_uniform(14))
        // Set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        // Randomize right number in the range [0..13]
        let rightNumber = Int(arc4random_uniform(14))
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        // Compare the card numbers
        // (Note how this is putting Application Logic into the VC...)
        if (leftNumber > rightNumber) {
            // left card wins, increment the score
            leftScore += 1
            // update the label
            leftScoreLabel.text = String(leftScore)
        } else if (leftNumber == rightNumber) {
            // it's a tie
        } else {
            // right card wins, increment the score
            rightScore += 1
            // update the label
            rightScoreLabel.text = String(rightScore)
        }
    } // dealTapped



}

