//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var pass:String=""
    @IBOutlet weak var diceViewTwo: UIImageView!
    @IBOutlet weak var diceViewone: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // diceViewone.alpha=0.5
    }


    @IBAction func rollButtonPressed(_ sender: Any) {
        pass=""
        diceViewone.image=[#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][Int.random(in:0...5)]
        diceViewTwo.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][Int.random(in:0...5)]
        for i in 0...6{
            
            var password = alphabet[Int.random(in:0...25)]
            
            pass += password
        }
        print(pass)
    }
}

