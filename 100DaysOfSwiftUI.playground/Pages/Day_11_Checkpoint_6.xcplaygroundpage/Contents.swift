

import Foundation

// Create a struct to store information about a Car. Include:

// Its model
// Number of seats
// Current gear
// Add a method to change gears up or down
// Have a think about variables and access control.
// Don´t allow invalid gears 1..10 seems a fair maximumn range

struct Auto {
    let model: String
    let seats: Int
    let maximumGears: Int
    private(set) var gear = 1
    
    mutating func changeGear(difference: Int){
        let newGear = gear + difference
            
        if newGear >= 1 && newGear <= maximumGears{
            gear = newGear
        }
    }
}

var auto = Auto(model: "Versa", seats: 5, maximumGears: 10)
auto.changeGear(difference: 11)
print(auto.gear)



// BELOW MY SOLUTION
struct Car {

    var gear: Int = 1
    var maximumGear2: Int
    mutating func up(model: String) -> String {
        if gear < maximumGear2 {
            gear += 1
        }
        return "Dudeeee you are fast, you are going \(gear) per hour in your \(model)"

    
    }
    mutating func down() -> String {
        if gear > 1 {
            gear -= 1
            return "You are too low, you are going \(gear) per hour"

        }
        return "Dude you cant do that"
        
    }
    
}

var car = Car(maximumGear2: 10)
print(car.up(model: "Versa"))
print(car.down())
print(car.down())
print(car.up(model: "Versa"))
print(car.up(model: "Versa"))
