import GameplayKit
import SpriteKit

class Island : GameObject
{
    // initializer / constructor
    init()
    {
        super.init(imageString: "island", initialScale: 1.1)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func Start()
    {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        horizontalSpeed = 5.0
        Reset()
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -710)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 710
        // get a pseudo random number
        let randomY:Int = (randomSource?.nextInt(upperBound: 616))! - 313
        position.y = CGFloat(randomY)
        isColliding = false
    }
    
    // public method
    func Move()
    {
        position.x -= horizontalSpeed!
    }
}
