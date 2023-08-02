//: [Previous](@previous)

import Foundation
 





class GameEngine: NSCopying {
    var level: Int;
    
     init(level: Int) {
        self.level = level
       
     }
    
    
   public func copy(with zone: NSZone? = nil) -> Any {
        return GameEngine(level: level);
    }
    
    public func start(){
        switch level {
        case 1:
            print("starting level one...")
        case 2:
            print("starting level two...")
        case 3:
            print("starting level three...")
        default:
            print("currently in default mode")
        }
    }
}




var game = GameEngine(level: 1)



var gameCopy = game.copy() as! GameEngine


gameCopy.level = 1
gameCopy.start()
