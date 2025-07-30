import UIKit

var greeting = "Hello, playground"
var myScore = 8*6
var myOpponent : Double = 100/4
var finalScore = Double(myScore) + (myOpponent)
print("The final score is : \(finalScore)")


var x = 5
var y = 15
var z = 3
var result = (x + y)/z
print("The result is : \(result)")


var three : Int = 3
var minusThree = -three
print(minusThree)

var ValidAge : Int = 21
var myAge = ValidAge < 18 ? "Minor" : "Adult"
print(myAge)

var groupPartner : String? = "John"
var partnerName = groupPartner ?? "No Partner"
print(partnerName)

//for index in 1...10{
//    print("2 * \(index) = \(2*index)")
//}

var list = [11,22,25,62,200]
for item in list{
    if item % 2 == 0{
        print("Even number : \(item)")
    }
}

//for values in 1..<10{
//    print(values)
//}

var hasDoorCode : Bool = false
var retinaScanPassed : Bool = true

if hasDoorCode && retinaScanPassed{
    print("You can enter")
}
else{
    print("Get Out")
}
let fingerPrintScan = true
if fingerPrintScan || retinaScanPassed{
    print("Enter Mfs")
}

