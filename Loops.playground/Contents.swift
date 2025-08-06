import UIKit

var greeting = "Hello, playground"
for index in 1...5 {
    print(index)
}

let names = ["Alice","Bob","Charlie"]
for i in names{
    print(i)
}

for letter in  "ABCDEFG"{
    print(letter)
}

for (index,letter) in "ABCDEFG".enumerated(){
    print("\(index) : \(letter)")
}

let vehicle = ["uniCycle" : 1 , "biCycle" : 2 , "triCycle" : 3]
for (type, number) in vehicle {
    print("type : \(type) , number : \(number)")
}

let animals = ["Lion", "Tiger", "Elephant"]

for index in 0..<animals.count {
    print(animals[index])
}

// stride skip the value by its by parameter

let minutes = 60
let minuteInterval = 5

for tick in stride(from: 0, to: minutes, by: 5){
    print(tick)
}

for tick in stride(from: 0, through: minutes, by: 5){
    print(tick)
}

var index = 0;
for i in 1...10 {
    index += 1
    print(index)
}

for counter in -10...10 {
    print(counter)
    if counter == 0 {
        break
    }
}

var number = 0

while number < 10 {
    number += 1
    
    if number % 2 == 0{
        continue
    }

    print("odd number : \(number)")
}


