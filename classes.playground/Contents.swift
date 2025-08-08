import UIKit

let x = "Ishan"

var y = "magarde"


struct Student {
    var name : String = "Student"
}

var myStudent = Student()

class Person{
    let name : String
    init(name: String) {
        self.name = name
    }
    
    func sayHello(){
        print("Hello \(name)")
    }
}

class Vehicle {
    var currentSpeed = 0.0
    
    var description : String {
        "current speed \(currentSpeed)"
    }
    
    func makeNoise(){
        
    }
    class Bicycle : Vehicle {
        
        class Tandem : Bicycle {
            var currentNoOfPassengers = 0
        }
        
    }
    class Train : Vehicle{
        override func makeNoise() {
            print("Choo Choo")
        }
    }
    
}

let train = Vehicle.Train()
train.makeNoise()


class Bike{
    var speed : Int
    var engine : String
    init (speed : Int , engine : String){
        self.speed = speed
        self.engine = engine
    }
    
}

var myBike = Bike(speed: 100, engine: "V4")

class SuperBike : Bike {
    var topSpeed : Int
    init(topSpeed: Int) {
        self.topSpeed = topSpeed
        super.init(speed: 23, engine: "V5")
    }
    
}

var ducati = SuperBike(topSpeed: 300,)
ducati.speed

