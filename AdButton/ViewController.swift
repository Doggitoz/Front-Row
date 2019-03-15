//
//  ViewController.swift
//  AdButton
//
//  Created by Coleton Wheeler on 3/15/19.
//  Copyright © 2019 Front Row. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Create outlets
    @IBOutlet weak var button: UIImageView!
    @IBOutlet weak var coinTotal: UILabel!
    
    //Declare variables on runtime
    var coins = 0
    
    //Load on runtime
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sets the image to a button
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.imageTapped(gesture:)))
        button.addGestureRecognizer(tapGesture)
        button.isUserInteractionEnabled = true
    }
    
    //When button is clicked
    @objc func imageTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            //Ad showing goes here
            coinRewards()
        }
    }
    
    //Add coins after watching ad
    func coinRewards() {
        coins += 1
        coinTotal.text = "Coins: " + String(coins)
    }

}

