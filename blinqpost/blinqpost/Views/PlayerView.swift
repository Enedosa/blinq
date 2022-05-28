//
//  PlayerView.swift
//  blinqpost
//
//  Created by Decagon on 28/05/2022.
//

import Foundation
import AVKit
import UIKit

class PlayerView: UIView {

    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }

    var playerLayer: AVPlayerLayer {
    
        return layer as! AVPlayerLayer
    }

    var player: AVPlayer? {
        get {
            return playerLayer.player
        }
    
        set {
            playerLayer.player = newValue
        }
    }
}
