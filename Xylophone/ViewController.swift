//
//  ViewController.swift
//  Xylophone
//
//  Created by Salah Khaled on 2/3/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit
// interact with hardware (audio)
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        
        // CC GG AA G FF EE DD C
        
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(currentKey: sender.currentTitle!)
        
        sender.alpha = 0.5
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        //Bring's sender's opacity back up to fully opaque.
        sender.alpha = 1.0
        }
        
    }
    func playSound (currentKey: String) {
        let url = Bundle.main.url(forResource: currentKey, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
