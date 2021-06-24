//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var player: AVAudioPlayer?

    @IBAction func keyPressed(_ sender: UIButton) {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else {return}
//
//        do{
//            try AVAudioSession.sharedInstance().setCategory(.playback,mode: .default)
//            try AVAudioSession.sharedInstance().setActive(true)
//            player = try AVAudioPlayer(contentsOf:url,fileTypeHint: AVFileType.mp3.rawValue)
//            guard let player = player else { return }
//            player.play()
//        }catch let error{
//            print(error.localizedDescription)
//        }
        playSound(soundName:sender.currentTitle!);
    }
    
    func playSound(soundName:String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    
}

