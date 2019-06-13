//
//  GameScene.swift
//  BouncingBall
//
//  Created by Matthew Reid on 6/12/19.
//  Copyright © 2019 Matthew Reid. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
    }
    
    override func sceneDidLoad() {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        let ball = SKSpriteNode(imageNamed: "basketball.png")
        ball.position = CGPoint(x: 150, y: 130)
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width / 2)
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.angularVelocity = 25
        ball.physicsBody?.restitution = 0.95
        ball.physicsBody?.affectedByGravity = true
        ball.physicsBody?.velocity = 30.5
        
        addChild(ball)
    }

}
