import UIKit

let appParameter : String = "Ishan"
let joke = """
Android is better than ios
Rdr2 is better than Gow2
"""
print(joke)

let greeting = "It is traditonal in programming to print \"Hello, World\""
print(greeting)

print("Hello World \rtest")

let myString = ""
if myString.isEmpty {
    print("String is Empty")
}

let string1 = "Ishan "
let string2 = "Magarde"
let result = string1 + string2
print (result)
let string = "ISHAN"
print(string.lowercased())

let password = "123444"
if password.hasSuffix("444"){
    print("Yeah baby")
}

if password.hasPrefix("345"){
    print("No baby")
}

if password.count < 8{
    print("The password is not long enough")
}

let operation = "success"
switch operation {
    case "success":
    print("Operation Successful for learning IB basics in swift")
default:
    print("Operation Failed")
}
let lion = "🦁"
print(lion)
let love = "\u{2665}"
print(love)
