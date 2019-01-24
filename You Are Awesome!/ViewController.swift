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
        messageLabel.text = "You Are Awesome!"
        messageLabel.textColor = UIColor.red
    }
    
    @IBAction func showAnotherMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Great!"
        messageLabel.textColor = UIColor.blue
    }
    
    
}



