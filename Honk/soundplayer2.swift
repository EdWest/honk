//
//  soundplayer2.swift
//  Honk
//
//  Created by Ed West on 5/8/22.
//

import Foundation
import AVFoundation
class Soundplayer2: ObservableObject {
    var player: AVAudioPlayer!
    func playSound() {
        guard let path = Bundle.main.path(forResource: "door", ofType:"mp3") else {
            return
        }
        let url = URL(fileURLWithPath: path)

        player = try? AVAudioPlayer(contentsOf: url)
        player?.play()
    }
}
