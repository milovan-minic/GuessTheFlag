//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Milovan Minic on 2/28/17.
//  Copyright © 2017 Milovan Minic. All rights reserved.
//

import GameplayKit
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var correctAnswer = 0
    var score = 0
    
    var lightGrey = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
//        button1.layer.borderColor = UIColor.lightGray.cgColor
//        button2.layer.borderColor = UIColor.lightGray.cgColor
//        button3.layer.borderColor = UIColor.lightGray.cgColor
        // Usage of custom made light grey just for demonstration purposes
        button1.layer.borderColor = lightGrey
        button2.layer.borderColor = lightGrey
        button3.layer.borderColor = lightGrey
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        askQuestion()
    }
    
    func askQuestion() {
        
        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
        
        title = countries[correctAnswer].uppercased()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

