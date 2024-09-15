

import Foundation

// Day 10 -- How to create your own structs

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()


struct Employee {
    let name: String
    var vacationRemaining: Int = 14
    
    mutating func takeVacation(days: Int){
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I am going on vacations")
            print("Days remaining are \(vacationRemaining)")
        }
        print("You dont have vacations!")
    }
}

var archer = Employee(name: "Joan", vacationRemaining: 10)
archer.takeVacation(days: 11)
print(archer.vacationRemaining)


let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)


// Day 10 -- How to compute property values dynamically

struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    

}

var archer2 = Employee2(name: "Joan")
archer2.vacationTaken += 3
archer2.vacationAllocated = 5
print(archer2.vacationRemaining)

// Day 10 -- How to take action when a property changes

struct Game {
    var score = 0 {
        didSet {
            print("Score now is \(score)")
        }
    }
}

var game = Game()

game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("The old value was: \(oldValue)")
            
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Adrian w")
app.contacts.append("Ish s")

// Day 10 -- How to create custom initializers

struct Player {
    let name: String
    let number: Int
    
    init(name: String){
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Joan")
print(player.number)
//let player = Player(name: "Joan", number: 12)
