//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var player: AVAudioPlayer!
    func playSound() {
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var totalTime = 0
    var secondPassed = 0
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton)
    {
        let hardness = sender.currentTitle!
        secondPassed = 0
        titleLabel.text = hardness
        timer.invalidate()
        totalTime = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }
    
    @objc func update()
    {
        if(secondPassed < totalTime)
        {
            progressBar.progress = Float(secondPassed)/Float(totalTime)
            secondPassed += 1
        }
        else
        {
            timer.invalidate()
            titleLabel.text = "Done!"
            progressBar.progress = 1.0
            playSound()
        }
    }
}
