import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on the bottom boundary
        if(position.y <= -250)
        {
            position.y = -250
        }
        
        // constrain the player on the top boundary
        if(position.y >= 250)
        {
            position.y = 250
        }
    }
    
    override func Reset()
    {
        position.y = -493
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
