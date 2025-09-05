import UIKit

enum CoffeeSize {
    case small, medium ,large
}
//
//var myCoffeeSize = CoffeeSize.medium
//myCoffeeSize = .large
//
//switch myCoffeeSize {
//case .small:
//    print("Small coffee")
//case .medium:
//    print("Medium coffee")
//case .large:
//    print("Large coffee")
//    
//}

enum Genre {
    case action, comedy , romance , thriller
}

struct Movie{
    var title : String
    var releaseYear : Int?
    var genre : Genre
}

let myMovie = Movie(title : "Inception" , releaseYear: 2010, genre: .thriller)

if let releaseYear = myMovie.releaseYear {
    print("The movie was released \(releaseYear)")
}

enum CoffeeType : String {
    case latte = "Creamy Latte"
    case cappuccino = "Espresso Cappuccino"
    case macchiato = "Cold brew Macchiato"
}

struct CoffeeOrder{
    var size : CoffeeSize
    var type : CoffeeType
    var paymentMethod : PaymentMethod
}

func describingOrder(_ order : CoffeeOrder ) {
    print("Your \(order.size) \(order.type.rawValue) with payment mode of \(order.paymentMethod.description)  is ready")
}

let myOrder = CoffeeOrder(size: .medium, type: .latte, paymentMethod : .creditCard(number: "1002-1233-2003-2222", expirationDate: "2002"))
describingOrder(myOrder)

enum PaymentMethod {
    case cash
    case applePay(deviceId : String)
    case creditCard(number : String, expirationDate : String)
    var description : String {
        switch self {
        case .cash:
            return "with cash"
        case let .applePay(deviceId):
            return "with Apple Pay (device ID: \(deviceId))"
        case let .creditCard(number, expirationDate):
            return "with credit card (number: \(number), expiration date: \(expirationDate))"
        }
    }
}

enum CoffeeSizes : String , CaseIterable{
    case small = "Small Size"
    case medium = "Medium Size"
    case large = "Large Size"
}

let numberOfChoices = CoffeeSizes.allCases.count
for size in CoffeeSizes.allCases {
    print("\(size)")
}


enum Planet : Int {
    case mercury = 1, venus ,earth , mars , jupiter , saturn , uranus , neptune
}

let bestPlanet : Planet = .earth
print(bestPlanet.rawValue)

indirect enum ArithmaticExpression {
    case number(Int)
    case addition(ArithmaticExpression, ArithmaticExpression)
    case multiplication(ArithmaticExpression, ArithmaticExpression)
}

let five = ArithmaticExpression.number(5)
let four = ArithmaticExpression.number(4)
let sum = ArithmaticExpression.addition(five, four)
let product = ArithmaticExpression.multiplication(sum , ArithmaticExpression.number(2))

func evaluate(_ expression : ArithmaticExpression)->Int{
    switch expression {
        case let .number(value):
        return value
    case let .addition(left, right) :
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right) :
        return evaluate(left) * evaluate(right)
    }
}


print(evaluate(product))



