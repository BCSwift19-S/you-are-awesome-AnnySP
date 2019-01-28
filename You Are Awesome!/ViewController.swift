//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Anny Shan on 1/14/19.
//  Copyright © 2019 Jun Shan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 4
    
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
        
        //show a message
        repeat{
            newIndex = Int.random(in: 0..<message.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text  = message[index]
        
        //show an image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //play a sound
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        var soundName = "sound\(soundIndex)"
        
        if let sound = NSDataAsset(name: soundName){
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch{
                print("ERROR: data in \(soundName) could not be played as a sound.")
            }
        } else{
            print("ERROR: File \(soundName) didn't load.")
        }
        
    }
    
}



