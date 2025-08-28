import UIKit

var greeting = "Hello, playground"

class Employee{
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    
    func work(){
        print("\(self.name) is working")
    }
}

class Manager : Employee{
    func conductingMeeting(){
            print("Manager is conducting meeting")
    }
}

class Developer : Employee{
    func writeCode(){
        print("Developer is coding")
    }
}

class Intern : Employee{
    func learn(){
        print("Intern is learning")
    }
}

var Staff : [Employee] = [
    Manager(name: "Ishan"),
    Developer(name: "xyz"),
    Intern(name: "abc")
]

for person in Staff{
    person.work()
}

print("------------------------------")

for person in Staff{
    if person is Manager {
        print("\(person.name) is a Manager")
    }
    else if person is Developer{
        print("\(person.name) is a Developer")
    }
    else if person is Intern{
        print("\(person.name) is an Intern")
    }
}

print("------------------------------")

for person in Staff{
    if let manager = person as? Manager{
        manager.conductingMeeting()
    }
    else if let developer = person as? Developer{
        developer.writeCode()
    }
    else if let intern = person as? Intern{
        intern.learn()
    }
}

for person in Staff {
    if person is Manager {
        let manager = person as! Manager
        manager.conductingMeeting()
    }
    
 }

var items : [Any] = [5,"Bill",0.6,]
