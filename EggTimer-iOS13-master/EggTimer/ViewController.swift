//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let arr = ["Soft":5,"Medium":7,"Hard":12]
    
//    var counter = 60
    
    var totalCount = 0
    var seconCount = 0

    var timer = Timer()
    
    var bombSoundEffect: AVAudioPlayer?
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        progress bar
        progressBar.progress = 1.0
    }



    @objc func updateCounter() {
        //example functionality
        if seconCount < totalCount {
//            let percentageProgress = seconCount / totalCount
            
            seconCount += 1
            progressBar.progress = Float(seconCount) / Float(totalCount)
            
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
            Sound(element:"alarm_sound" )
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {

        
        
        timer.invalidate()
        
        
        
        let hardness = sender.currentTitle!
        totalCount = arr[hardness]!
        
        progressBar.progress = 0.0
        seconCount = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }

    func Sound(element: String) {
        let path = Bundle.main.path(forResource: element, ofType:"mp3")!
        let url = URL(fileURLWithPath: path)

        do {
            bombSoundEffect = try AVAudioPlayer(contentsOf: url)
            bombSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
}
