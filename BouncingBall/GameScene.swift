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
    //var platforms = [SKSpriteNode()]
    
    override func didMove(to view: SKView) {
        
    }
    
    override func sceneDidLoad() {
//        let p1 = SKSpriteNode(imageNamed: "platform.png")
//        let p2 = SKSpriteNode(imageNamed: "platform.png")
//        let p3 = SKSpriteNode(imageNamed: "platform.png")
//        platforms = [p1, p2, p3]
//        var startx = CGFloat.init(25)
//        for elem in platforms {
//            elem.physicsBody = SKPhysicsBody(circleOfRadius: (elem.size.width) / 1.5)
//            elem.physicsBody?.isDynamic = true
//            elem.physicsBody?.affectedByGravity = true
//            elem.physicsBody?.allowsRotation = false
//            elem.position = CGPoint(x: startx, y: self.frame.size.height - 15)
//            elem.physicsBody?.velocity = CGVector.init(dx: 0, dy: 10)
//            startx += 80
//            addChild(elem)
//        }
        
        self.scene?.backgroundColor = UIColor.init(red: 63/255, green: 128/255, blue: 194/255, alpha: 1.0)
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
    
    override func update(_ currentTime: TimeInterval) {
        guard ball != nil else {
            return
        }
        if Double(ball!.physicsBody!.angularVelocity) < 10 {
            ball?.physicsBody?.applyForce(CGVector.init(dx: 200.0, dy: 200.0))
        }
//        for elem in platforms {
//            if elem.physicsBody!.isResting || elem.physicsBody!.angularVelocity < CGFloat.init(1.0) {
//                elem.position = CGPoint(x: elem.position.x, y: UIScreen.main.bounds.height - 15)
//                elem.physicsBody?.velocity = CGVector.init(dx: 0, dy: 10)
//            }
//        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        
        let location = touch.location(in: self)
        let ball = SKSpriteNode(imageNamed: "basketball.png")
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width / 2.0)
        ball.physicsBody?.restitution = 0.4
        ball.position = location
        addChild(ball)
    }


}
