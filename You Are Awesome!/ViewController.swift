//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Paige Moshier on 9/3/19.
//  Copyright © 2019 Paige Moshier. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Fantastic!"]
        
 
  var newIndex: Int // declarers but doesn't initialize newIndex
   
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
   
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
     
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
      
        
        //play sound
        var soundName = "sound\(soundIndex)"
        if let sound = NSDataAsset(name: soundName) {
            do {
            try awesomePlayer = AVAudioPlayer(data: sound.data)
            } catch {
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
        } else {
            print("ERROR: file \(soundName) didn't load.")
        }
        
        
        
    }
}


