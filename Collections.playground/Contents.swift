import UIKit

var greeting = "Hello, playground"
var names : [String] = ["I","S","H","A","N"]

var numbers : [Int8] = [2,5,6,3,5]

if numbers.contains(5){
    print("number is present")
}
else{
    print("number is not present")
}

var array = [Int](repeating: 0, count: 20)
print(array)

var strArray : [String] = ["swift", "xcode", "ios", "appDesign"]
strArray.append("keyNote")
print(strArray)
strArray += ["apple", "banana"]
print(strArray)
strArray.insert("mysql", at: 0)
print(strArray)

var element = strArray.remove(at: 2)
print("The removed element is \(element)")
print(strArray)


var firstArray : [Int] = [1,2,3]
var secondArray : [Int] = [4,5,6]
var combinedArray : [[Int]] = [firstArray,secondArray]

print(combinedArray)

