//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var totalTime = 0
    var secondPassed = 0
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton)
    {
        titleLabel.text = "How do you like eggs?"
        timer.invalidate()
        print(sender.currentTitle!)
        let hardness = sender.currentTitle!
        print(eggTimes[hardness]!)
        totalTime = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }
    
    @objc func update()
    {
        if(secondPassed < totalTime)
        {
            let percentageProgress = secondPassed/totalTime
            progressBar.progress = Float(percentageProgress)
            secondPassed += 1
        }
        else
        {
            timer.invalidate()
            titleLabel.text = "Done!"
        }
    }
}
