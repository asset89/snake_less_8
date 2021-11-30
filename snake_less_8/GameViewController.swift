//
//  GameViewController.swift
//  snake_less_8
//
//  Created by Asset Ryskul on 30.11.2021.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size: view.bounds.size)
        
        let skView = view as! SKView
        
        skView.showsFPS = true
        skView.showsNodeCount = true
        scene.scaleMode = .resizeFill
        
        skView.presentScene(scene)
    }
}
