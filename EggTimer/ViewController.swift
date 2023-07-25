//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
//    var timer = 60
//    func countdown() {
//        timer -= 1
//    }

    
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
    
        

//        var clock = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: Selector(("countdown")), userInfo: nil, repeats: true)

        print(sender.currentTitle!)
        
        let hardness = sender.currentTitle!
        print(eggTimes[hardness]!)
        
        
    }
    

}
