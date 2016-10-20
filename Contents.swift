//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



class AllDoor {
    
    func CloseDoor()
    {
        print("close the door")
    }
    func OpenDoor()
    {
        print("open the door")
    }
}


class Door: AllDoor {
    
}

class HomeDoor: Door {
    
    override func OpenDoor() {
        print("open seasane")
    }
    override func CloseDoor() {
        print("close plz")
    }

}

class LandDoor: Door {
    
    override func OpenDoor() {
        print("open again")
    }
    override func CloseDoor() {
        print("close now")
    }
}


class BankDoor: Door {
    
    override func OpenDoor() {
        print("the door will open at 8")
    }
    override func CloseDoor()
    {
        print("now the door will close 2")
    }
    
    private var SecurityNumber: String = "123-456-789"
    var ShowSecurityNumber : String{
        get{
            return self.SecurityNumber
        }
        
    }
    
}



let yourdoor = BankDoor()
yourdoor.OpenDoor()
yourdoor.ShowSecurityNumber


var BreakTheDoor = [BankDoor(), HomeDoor(), LandDoor()]
for Door in BreakTheDoor {
    Door.OpenDoor()
}






