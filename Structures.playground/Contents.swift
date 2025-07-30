import UIKit
struct Person {
    var name : String
    var age : Int
}

let person = Person(name : "Ishan", age : 20)
print(person.name)
print(person.age)

//Default Initializer
struct Odometer {
    var count : Int = 0
}

var odometer = Odometer()
print(odometer.count)

struct BankAccount {
    var balance : Double = 26.26
    var bankAccountNumber : Int
}

var myAccount = BankAccount(bankAccountNumber : 123456789)
print(myAccount.balance)
print(myAccount.bankAccountNumber)


struct Temperature {
    var celcius : Double
     
    init (celcius : Double) {
        self.celcius = celcius
    }
    
    init(fahrenheit : Double){
        celcius = (fahrenheit - 32) / 1.8
    }
}

let currentTemperature = Temperature(celcius: 18.5)
let boiling = Temperature(fahrenheit: 212)

print(currentTemperature.celcius)
print(boiling.celcius)
