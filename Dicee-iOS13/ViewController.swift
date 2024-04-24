//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceOne: UIImageView!
    
    @IBOutlet weak var diceTwo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        diceOne.alpha = 0.5
    }

    @IBAction func rollButtonGotTapped(_ sender: UIButton) {
        let dices = ["One","Two","Three","Four","Five","Six"]
        let randomOne:String = dices.randomElement() ?? "One"
        let randomTwo:String  = dices.randomElement() ?? "One"
        let randomNumber = Int.random(in: 0..<dices.count)
        diceOne.image = UIImage(imageLiteralResourceName: "Dice" + "\(String(describing: randomOne))")
        diceTwo.image = UIImage(imageLiteralResourceName: "Dice" + "\(String(describing: randomTwo))")


    }
    
}

