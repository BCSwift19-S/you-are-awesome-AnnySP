//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Anny Shan on 1/14/19.
//  Copyright © 2019 Jun Shan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    //Code below executes when the app's view first load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessageButtonPressed(_ sender: UIButton) {
        if messageLabel.text == "You are Awesome!" {
            messageLabel.text = "You are Great!"
        } else if messageLabel.text == "You are Great!"{
            messageLabel.text = "You are Amazing!"
        } else {
            messageLabel.text = "You are Awesome!"
        }
    }
    
  
    
}



