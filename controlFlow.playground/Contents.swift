import UIKit

let temperature = 100
var isPluggedIn = false
var hasBatteryPower = true
if hasBatteryPower || isPluggedIn{
    print("You can use laptop")
}
else{
    print("😱")
}

let switchChar = 1
switch switchChar{
    case 1:
    print("one")
case 2:
    print("two")
default:
    print("default")
}

enum Direction {
    case North
    case South
    case East
    case West
}

let distance = 50
switch distance {
case 0...9
    : print("You are close to home")
case 10...49:
    print("You are halfway to home")
default:
    print("You are far away from home")
}
