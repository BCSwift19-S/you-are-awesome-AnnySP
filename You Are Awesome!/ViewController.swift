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

    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String) {
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
        index = nonRepeatingRandom(lastNumber: index, maxValue: message.count)
        messageLabel.text  = message[index]
        
        //show an image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //get a random number to use in our soundName file
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        
        //play a sound
        var soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
        
    }
    
}



