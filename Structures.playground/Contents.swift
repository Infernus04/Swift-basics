import UIKit
struct Person {
    var name : String
    var age : Int
}

let person = Person(name : "Ishan", age : 20)
print(person.name)
print(person.age)

//Default Initializer
//struct Odometer {
//    var count : Int = 0
//}
//
//var odometer = Odometer()
//print(odometer.count)
//
struct BankAccount {
    var balance : Double = 26.26
    var bankAccountNumber : Int
}

var myAccount = BankAccount(bankAccountNumber : 123456789)
print(myAccount.balance)
print(myAccount.bankAccountNumber)


//struct Temperature {
//    var celcius : Double
//     
//    init (celcius : Double) {
//        self.celcius = celcius
//    }
//    
//    init(fahrenheit : Double){
//        celcius = (fahrenheit - 32) / 1.8
//    }
//}

//let currentTemperature = Temperature(celcius: 18.5)
//let boiling = Temperature(fahrenheit: 212)
//
//print(currentTemperature.celcius)
//print(boiling.celcius)

struct Odometer {
    var count : Int = 0

    mutating func increment() {
        count += 1
    }
    
    mutating func increment(by amount : Int){
        count += amount
    }
    
    mutating func reset() {
        count = 0
    }
}

var odometer = Odometer()
odometer.increment()
odometer.increment(by: 15)
print(odometer.count)

var odometer1 = Odometer()
odometer1.increment()
odometer1.increment(by: 20)
print(odometer1.count)


//struct Temperature1{
//    var celcius : Double
//    
//    var fahrenheit : Double {
//        (celcius * 1.8) + 32
//    }
//}
//
//let cityTemperature = Temperature1(celcius: 10)
//print(cityTemperature.fahrenheit)

struct stepCounter {
    
    var totalSteps : Int = 50 {
        willSet {
            print("About to set total steps to \(newValue) steps")
        }
        didSet {
            if oldValue < totalSteps {
                print("You took \(totalSteps - oldValue) extra steps")
            }
        }
    }
    mutating func stepIncrement(){
        totalSteps += 1
    }
}
var counter = stepCounter()
counter.stepIncrement()
counter.totalSteps = 100
counter.totalSteps = 120
counter.totalSteps = 120

@MainActor
struct Temperature {
    @MainActor static var boilingPoint : Double = 100
    
    static func convertedFromFahrenheit(_ temperatureInFahrenheit : Double) -> Double {
        (((temperatureInFahrenheit - 32) * 5) / 9)
    }
    
    let boilingPoint = Temperature.boilingPoint
    let currentTemperature = Temperature.convertedFromFahrenheit(100)
    let positiveNumber = abs(-4.14)
}

print(Temperature.boilingPoint)
print(Temperature.convertedFromFahrenheit(100))
print(Temperature().positiveNumber)

struct Size {
    var width : Double
    var height : Double
}

var someSize = Size(width: 250, height: 1000)
var anotherSize = someSize
someSize.width = 500
print(someSize.width)
print(anotherSize.width)
