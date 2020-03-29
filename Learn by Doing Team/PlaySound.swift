//
//  PlaySound.swift
//  Learn by Doing Team
//
//  Created by Artur Shamsutdinov on 29.03.2020.
//  Copyright © 2020 Artur Shamsutdinov. All rights reserved.
//

import Foundation
import AVFoundation

// MARK: - AUDIO PLAYER

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
