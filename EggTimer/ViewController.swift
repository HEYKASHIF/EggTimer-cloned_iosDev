//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var ramainingTime = 60
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 1.0
        timer.invalidate()
        
        print(sender.currentTitle!)
        
        let hardness = sender.currentTitle!
        
        print(eggTimes[hardness]!)
        
        ramainingTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }
    @objc func update() {
        if(ramainingTime > 0)
        {
            print("\(ramainingTime) seconds.")
            
            ramainingTime -= 1
        }
        else
        {
            timer.invalidate()
            titleLabel.text = "Done!"
        
        }
        // Something cool
    }
    

}
