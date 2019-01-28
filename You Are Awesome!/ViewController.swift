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
    var index = 0
    
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
        
//        var newIndex = -1
        var newIndex: Int
        
        repeat{
            newIndex = Int.random(in: 0..<message.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text  = message[index]
        
//        messageLabel.text  = message.randomElement()!
        
//        messageLabel.text  = message[index]
//
//        if index == message.count - 1 {
//            index = 0
//        } else {
//            index += 1
//        }
        
//        let message1 = "You Are Fantastic!!!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2{
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
    }
    
  
    
}



