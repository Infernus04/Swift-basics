import UIKit

var greeting = "Hello, playground"
var scores = ["Richard" : 500 , "Luke" : 400, "Cheryl" : 300]
print(scores)
//scores["Richard"] = 999
//print(scores)

scores.updateValue(777, forKey: "Richard")
print(scores)

//If the key is not present in the dictionary , it return nil if it is stored in a variable
//But if I just update Value and key didnt exist if will add the key


scores.updateValue(969, forKey: "Ishan")
print(scores)
var temp = scores.updateValue(776, forKey: "Magarde") ?? 0
print(temp)

var languages : [String : String] = ["first" : "Swift" , "second" : "C++", "third" : "Python"]
print(languages)
languages.updateValue("Java", forKey: "fourth")
print(languages)
languages.removeValue(forKey: "fourth")
print(languages)

print(languages.count)
print("Value of the dictionary : \(languages.values)")
print("Keys of the dictionary : \(languages.keys)")

