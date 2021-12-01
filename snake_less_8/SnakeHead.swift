//
//  SnakeHead.swift
//  snake_less_8
//
//  Created by Asset Ryskul on 01.12.2021.
//

import UIKit

class SnakeHead: SnakeBodyPart {
    override init(atpoint point: CGPoint) {
        super.init(atpoint: point)
        
        self.physicsBody?.categoryBitMask = CollisionCategory.SnakeHead
        self.physicsBody?.contactTestBitMask = CollisionCategory.EdgeBody | CollisionCategory.Apple | CollisionCategory.SNake
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
