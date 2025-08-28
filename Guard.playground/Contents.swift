import UIKit

var greeting = "Hello, playground"


var birthdayIsToday: Bool = true
var cakeCandlesList = true
var invitedGuests : [String] = ["Alice", "Bob", "Charlie"]


@MainActor
func singHappyBirthday() {
    guard birthdayIsToday else {
        print("No one has Birthday today")
        return
    }
    
    guard !invitedGuests.isEmpty else {
        print("It's just a family sport")
        return
    }
    
    guard cakeCandlesList else {
        print("THe cake candles hasn't been lit yet")
        return
    }
}

func divide(_ number : Double, by divisor : Double){
    guard divisor != 0.0 else{
        return
    }
    let result = number/divisor
    print(result)
}

var title : String? = "Swift"
var price : Double = 246.99
var pages : Int? = 500

func processBookDetails(title : String? , price : Double? , pages : Int?){
    guard let theTitle = title, let thePrice = price , let thePages = pages else {
        return
    }
    print("\(theTitle) cost $\(thePrice) and has \(thePages) pages")
}

processBookDetails(title: title, price: price, pages: pages)

func calculateResult(a : Int? , b : Int? , c : Int?)->Int{
    guard let aValue = a else{ return 0 }
    guard let bValue = b else{ return aValue }
    guard let cValue = c else{ return bValue }
    
    return aValue + bValue + cValue
}


