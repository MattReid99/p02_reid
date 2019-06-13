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
    
    var ball : SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
    }
    
    override func sceneDidLoad() {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        ball = SKSpriteNode(imageNamed: "basketball.png")
        ball?.position = CGPoint(x: 150, y: 130)
        ball?.physicsBody = SKPhysicsBody(circleOfRadius: (ball?.size.width)! / 2)
        ball?.physicsBody?.isDynamic = true
        ball?.physicsBody?.angularVelocity = 100
        ball?.physicsBody?.linearDamping = 0.0
        ball?.physicsBody?.angularDamping = 0.0
        ball?.physicsBody?.restitution = 1.0
        ball?.physicsBody?.friction = 0.0
        ball?.physicsBody?.affectedByGravity = true
        //ball?.physicsBody?.velocity = CGVector.init(dx: 15.0, dy: 15.0)
        
        addChild(ball!)
    }
    


}
