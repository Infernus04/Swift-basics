import UIKit
//1
func calculateArea(length : Double , width : Double)->Double{
    return length * width
}
let res = calculateArea(length: 10, width: 20)
print(res)

//2
func swapValues(a : inout Int , b : inout Int){
    var temp : Int
    temp = a
    a = b
    b = temp
}

var x = 10
var y = 20
print("Before Swapping : x = \(x) , y = \(y)")
swapValues(a: &x, b: &y)
print("After Swapping : x = \(x) , y = \(y)")

//3
func reverse(string : String)->String{
    var characters = Array(string)
    var i = 0
    var j = characters.count - 1
    while i < j{
        let temp = characters[i]
        characters[i] = characters[j]
        characters[j] = temp
        i += 1
        j -= 1
    }
    return String(characters)
}

let string = "Hello World"
print("Reversed String : \(reverse(string: string))")


//4
func factorial(num : Int)-> Int{
    if num <= 1{
        return 1
    }
    return factorial(num: num - 1) * num
}

let result = factorial(num: 5)
print("Factorial of 5 is : \(result)")


//5
func isPalindrome(string : String)->Bool{
    var reversedString = reverse(string: string)
    if string == reversedString{
        return true
    }
    return false
}

let checkString = "racecar"
if isPalindrome(string: checkString){
    print("String is palindrome")
}
else{
    print("String is not Palindrome")
}


//6
func countVowels(string : String)->Int{
    let vowels = ["a" , "e" , "i" , "o" , "u"]
    var ans = 0
    for char in string{
        if vowels.contains(String(char).lowercased()){
            ans += 1
        }
    }
    return ans
}

let count = countVowels(string: "Hello World")
print("Number of Vowels in Hello World is : \(count)")
