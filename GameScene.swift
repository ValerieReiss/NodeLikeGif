//
//  GameScene.swift
//  SKAction Animation GIF copy
//
//  Created by Valerie on 22.03.23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        CGPointMake(0.5, 0.5)
        let image = SKSpriteNode(imageNamed: "image")
        image.setScale(2)
        image.position = CGPoint(x:self.frame.midX, y:self.frame.midY)
        image.zPosition = 5
        addChild(image)
        
        let f0 = SKTexture.init(imageNamed: "image.png")
        let f1 = SKTexture.init(imageNamed: "image2.png")
        let f2 = SKTexture.init(imageNamed: "image3.png")
        let frames0: [SKTexture] = [f0]
        let frames1: [SKTexture] = [f1, f2]
        
        let normal = SKAction.animate(with: frames0, timePerFrame: 0.8)
        let change = SKAction.animate(with: frames1, timePerFrame: 0.2)
        
        let normalaction = SKAction.repeat(normal, count: 1)
        let changeaction = SKAction.repeat(change, count: 4)
        
        let sequence = SKAction.sequence([normalaction, changeaction])
        let redo = SKAction.repeatForever(sequence)
        
        image.run(redo)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
     
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
