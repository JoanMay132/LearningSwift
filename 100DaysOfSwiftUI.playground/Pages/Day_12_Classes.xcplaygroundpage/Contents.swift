
import Foundation

// Day 12 - How to create your own classes.

// You get to create and name then
// Add properties, methods, property observers, and access control
// Create custom initializers to configure new instances.

// You can make one class build upon funcionality in another class
// Swift won´t generate a memberwise initializer for classes.
// If you copy and instance of a class, both copies share the same data.
// We can add a deinitializer to run when the final copy is destroyed.
// Constant class instances can have their variable properties changed.

class Game {
    var score = 0 {
        didSet {
            print("Score now is: \(score)")
        }
    }
}
var newGame = Game()
newGame.score += 10

// Day 12 - How to make one class inherit from another

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day")
    }
}

final class Developer: Employee {
    func work(){
        print("I am writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about wheter code should be indented using tabs or spaces. ")
    }
}

final class Manager: Employee {
    func work(){
        print("I am writing code for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
robert.work()
let Antonio = Developer(hours: 10)
Antonio.work()
let Nodal = Developer(hours: 12)
Nodal.printSummary()

let Eve = Developer(hours: 15)
Eve.printSummary()

// Day 12 - How to add iniitializers for classes

class Vehicle {
    let isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
    } 
}

class Car: Vehicle {
    let isConvertible = false
    
//    init(isElectric:Bool, isConvertible: Bool) {
//        self.isConvertible = isConvertible
//        super.init(isElectric: isElectric)
//    }
}

let texlaX = Car(isElectric: true)

// Day 12 -- How to copy classes

class User {  // While structs does not change the data
    var username = "Anonymous"
    
    func copy() -> User{
        let user  = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "JoanMay132"

print(user1.username)
print(user2.username)

// Day 12 -- How to create a deinitializer for a class

// You don´t use func with deinitializers
// Deinitializers can never take parameters or return data.
// Deinitializers run when the last copy of a class instance is destroyed.
// We never call deintializers directly.
// Structs do not have deinitializers.


class User3 {
    let id: Int
    init(id: Int) {
        self.id = id
        print("User \(id) I'm alive!")
    }
    deinit{
        print("User: \(id) I'm dead")
    }
}
var users = [User3]()
for i in 1...3 {
    let user3 = User3(id: i)
    print("User: \(user3.id) I'm in control")
    users.append(user3)
}
print("Loop is finished!")
users.removeAll()
print("Array is clear")


// Day 12 -- How to work with variables inside classes.

class User4 {
    var name: String = "Paul"
}
let user4 = User4()
user4.name = "Taylor"

print(user4.name)
