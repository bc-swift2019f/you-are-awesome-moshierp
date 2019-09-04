//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Paige Moshier on 9/3/19.
//  Copyright © 2019 Paige Moshier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
        messageLabel.textColor = UIColor.orange
    }
    
    @IBAction func showAnotherMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Great!"
        messageLabel.textColor = UIColor.green
    }
}

