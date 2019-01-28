//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Anny Shan on 1/14/19.
//  Copyright © 2019 Jun Shan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    
    //Code below executes when the app's view first load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessageButtonPressed(_ sender: UIButton) {
        let message  = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You brighten my day!",
                        "You are da bomb!",
                        "Hey, fablous!",
                        "You are tremendous!",
                        "You've got the design skill of Jony Ive!",
                        "I can't wait to download your app!"]
        
        var newIndex: Int
        
        repeat{
            newIndex = Int.random(in: 0..<message.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text  = message[index]
        
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")

    }
    
}



