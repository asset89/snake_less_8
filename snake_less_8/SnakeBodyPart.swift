//
//  SnakeBodyPart.swift
//  snake_less_8
//
//  Created by Asset Ryskul on 01.12.2021.
//

import UIKit
import SpriteKit

class SnakeBodyPart: SKShapeNode {
    let diametr: CGFloat = 10.0
    
    init(atpoint point: CGPoint) {
        super.init()
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: diametr, height: diametr)).cgPath
        fillColor = .green
        strokeColor = .green
        lineWidth = 10
        
        self.position = point
        self.physicsBody = SKPhysicsBody(circleOfRadius: diametr, center: CGPoint(x: 5, y: 5))
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = CollisionCategory.SNake
        self.physicsBody?.contactTestBitMask = CollisionCategory.EdgeBody | CollisionCategory.Apple
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
