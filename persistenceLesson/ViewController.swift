//
//  ViewController.swift
//  persistenceLesson
//
//  Created by Olivia Mellen on 2/21/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var counterLabel: UILabel!
    var counter = 0
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        counter = userDefaults.integer(forKey: "counterKey")
        counterLabel.text = "\(counter)"
    }

    @IBAction func whenPressed(_ sender: Any)
    {
        counter += 1
        counterLabel.text = "\(counter)"
        userDefaults.set(counter, forKey: "counterKey")
    }
 
    @IBAction func reset(_ sender: Any)
    {
        counter = 0
        counterLabel.text = "\(counter)"
    }
    
    
}

