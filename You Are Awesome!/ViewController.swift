//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Paige Moshier on 9/3/19.
//  Copyright © 2019 Paige Moshier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 0
    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Fantastic!"]
        
 
var newIndex = -1
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
    //messageLabel.text = messages.randomElement()!
    //
    //
    
//        messageLabel.text = messages[index]
//
//        if index == messages.count - 1 {
//            index = 0
//        } else { index = index + 1}
//
//        let message1 = "You  Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//
//        } else {
//            messageLabel.text = message1
//        }
    }
}


