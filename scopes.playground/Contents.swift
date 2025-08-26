import UIKit

var greeting = "Hello, playground"
var globalVariable = 50
print(globalVariable)

//func printingNumber() {
//    var num = 25
//    print(num)
//}
//
//printingNumber()

var age = 20
@MainActor
//func printAge() {
//    print("Age is \(age)")
//}
//
//printAge()


func positiveFiveNumbers(){
    var name = "Ishan"
    
    for index in 1...5 {
        print("Hello \(name), \(index)")
    }
    print("name : \(name)")
}

positiveFiveNumbers()


let points = 100

for index in 1...3{
    let points = 100
    print(index + points)
}

print("Outside loop : \(points)")

