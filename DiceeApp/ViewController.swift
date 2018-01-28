//
//  ViewController.swift
//  DiceeApp
//
//  Created by Ankit Kumar on 28/01/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceInexLeft = 0
    var randomDiceIndexRight = 0
    @IBOutlet weak var diceleft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playButton(_ sender: UIButton) {
        randomDiceInexLeft = Int(arc4random_uniform(6))
        randomDiceIndexRight = Int(arc4random_uniform(6))
//        print(randomDiceInexLeft)
        
        diceleft.image = UIImage(named :diceArray[randomDiceInexLeft])
        diceRight.image = UIImage(named :diceArray[randomDiceIndexRight])
        
    }
}

