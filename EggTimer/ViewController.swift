//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var ramainingTime = 60
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
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
        // Something cool
    }
    

}
