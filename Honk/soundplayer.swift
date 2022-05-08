//
//  soundplayer.swift
//  Honk
//
//  Created by Ed West on 5/7/22.
//

import Foundation
import AVFoundation
class Soundplayer: ObservableObject {
    var player: AVAudioPlayer!
    func playSound() {
        guard let path = Bundle.main.path(forResource: "honk", ofType:"mp3") else {
            return
        }
        let url = URL(fileURLWithPath: path)

        player = try? AVAudioPlayer(contentsOf: url)
        player?.play()
    }
}
