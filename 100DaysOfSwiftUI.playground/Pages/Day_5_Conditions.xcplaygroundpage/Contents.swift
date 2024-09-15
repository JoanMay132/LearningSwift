
import Foundation

// DAY 5 -------- How to check a condition is true or false

//if someCondition {
//    print("Do something")
//    print("Do something else")
//    print("Do a third thing")
//}

let score = 85

if score > 80 {
    print("Great job!🥹")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}
if percentage < 85{
    print("Sorry, you failed the test :c")
}

if age >= 18 {
    print("You are an adult")
}


let ourName = "Joan May"
let friendName = "Faride Trujeque"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0) //remove the first item
}

print(numbers)

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)!")
}

var username = "taylorswift13"

if username == "" {
    username = "Anonymous"
}

print("Welcome \(username)")


// DAY 5 -------- How to check multiple conditions

let age2 = 16

//if age >= 18 {
//    print("You can vote in the next election.")
//}
//
//if age < 18 {
//    print("Sorry, you're too young to vote.")
//}

if age2 >= 18{
    print("You can vote in the next election.")
}else{
    print("Sorry, you're too young ton vote.")
}
let a = false
let b = true
if a {
    print("Code to run if a is true")
}else if b{
    print("Code to run if a is false but b is true")
}else {
    print("Code to run if both a and b are false")
}

let temp = 25

//if temp > 20 {
//    if temp < 30 {
//        print("It´s a nice day.")
//    }
//}

if temp > 20 && temp < 30 {
    print("It is a nice day.")
}

let userAge = 14
let hasParentsConsent = true

if age >= 18 || hasParentsConsent == true {
    print("You can buy the game!")
}

enum transportOption {
    case airplane, helicopter, bycicle, car, escooter
}

let transport = transportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bycicle{
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else{
    print("I am going to hire a scooter now!")
}


// DAY 5 -------- How to use switch statements to check multiple conditions

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun



switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case.wind:
    print("Wear something warm")                            
case.snow:
    print("School is cancelled")
case.unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You´re Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You´re Black Panther!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me..")

switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

// Day 5 ------- How to use the ternary conditional operator for quick tests

2 + 5 // Binary operator "Has two piecess of data
let age3 = 18
let canVote = age >= 18 ? "Yes" : "No"
                // What?   //True   //No    What are we checking?
print(canVote)

let hour = 23

print(hour<12 ? "It's before noon" : "It's afternoon")

let names = ["Jaye", "Kaylee", "Mal"]

let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)


enum Theme {
    case light, dark, system
}
let theme = Theme.dark

let background = (theme == .dark) ? "Black" : "White"
print(background)
