import UIKit

var greeting = "Hello, playground"

func displayPI() {
    print("3.14")
}

displayPI()
func triple(value : Int){
    let result = value * 3
    print(result)
}

triple(value: 10)

func multiply(firstNumber : Int , secondNumber : Int){
    let resutl = firstNumber * secondNumber
    print(resutl)
}

multiply(firstNumber: 10, secondNumber: 20)

func multiply(firstNum : Int , secondNum : Int)->Int{
    let result = firstNum * secondNum
    return result
}
let result = multiply(firstNum: 15, secondNum: 20)
print(result)

func sayHello(to : String , and : String){
    print("Hello \(to) and \(and)")
}
sayHello(to: "Ishan", and: "Magarde")
                                     
func sayBye(to : String , and friend : String){
    print("Bye \(to) and \(friend)")
}

sayBye(to: "Ishan", and: "Magarde")

// Using underscore so that when calling the function we dont have to write the parameters
func add(_ firstNumber : Int, _ secondNumber : Int){
    print("Addition : \(firstNumber + secondNumber)")
}
add(10, 20)

func displayUserInfo(name : String, place : String = "Pune"){
    print("The name of the person is \(name) and he lives in \(place)")
}

displayUserInfo(name: "Ishan")
displayUserInfo(name: "Ishan", place: "Mumbai")

func findMinMax(_ firstNumber : Int, _ secondNumber : Int)->(min : Int , max : Int){
    if firstNumber < secondNumber {
        return (min : firstNumber, max : secondNumber)
    }
    else{
        return (min : secondNumber, max : firstNumber)
    }
}

let (minValue , maxValue) = findMinMax(10, 20)
print("Minimum value is \(minValue) and maximum value is \(maxValue)")

func dateTimeFormat(from date : Date)->(year : Int, month : Int, day : Int , hour : Int, minute : Int , second : Int){
    let calender = Calendar.current
    let components = calender.dateComponents([.year , .month, .day, .hour, .minute, .second], from: date)
    return (
        components.year ?? 0,
        components.month ?? 0,
        components.day ?? 0,
        components.hour ?? 0,
        components.minute ?? 0,
        components.second ?? 0
    )
}
let date = Date()
print(dateTimeFormat(from: date))

