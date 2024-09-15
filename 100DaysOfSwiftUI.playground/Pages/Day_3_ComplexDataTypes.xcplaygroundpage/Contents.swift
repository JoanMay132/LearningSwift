

import Foundation

// Day 3 - How to store ordered data in arrays

var beatles = ["Jhon", "Paul", "George", "Ringo"]
beatles.append("Adrian")
beatles.append("Allan")
beatles.append("Ana")
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

let firstBeatle = beatles[0]
let firstNumber = numbers[0]
// let notAllowed = firstBeatle + firstNumber
var scores = Array<Int>()
scores.append(100)
scores.append(89)
scores.append(95)
print(scores)

var albums = Array<String>() //OR var albumbs = [String]()
albums.append("Folklore")
albums.append("Pop")
albums.append("Fearless")
albums.append("red")
print(albums.count)


var cars = [String]()
print(type(of: cars))

var characters = ["Lana", "Palm", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters)
characters.removeAll()
print(characters.count)

var bandmovies = ["Casino Royale", "Spectre", "No time to die"]
print(bandmovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Obama", "Trump", "Biden","Bush"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


// ------------- Day 3 How to store and find data in dictionaries
let employee = [
    "name": "Taylor Swift",
    "age" : "23",
    "job" : "singer",
    "location": "Nashville"
]

print(employee["age" , default : "Unknown"])
print(employee["job", default : "Unknown"])

let hasGratuaded = [
    "Erick": false,
    "Joan" : true,
    "Charlie" : false
]

let olympics = [
    2012 : "London",
    2016 : "Rio de Janeiro",
    2021 : "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String : Int]()

heights["Yao Ming"] = 229
heights["Xin Zhao"] = 214
heights["Liam Nellson"] = 210

print(heights["Yao Ming", default: 0])

var archEnemies = [String : String]()
archEnemies["Batman"] = "Joker"
archEnemies["SuperMan"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"

// ----- Day 2 - How to use sets for fast data lookup

// let actors = Set(["Densel Wanshington", "Tom Cruise", "Nicolas Cage", "Samuel Jackson"])
// print(actors)
var actors = Set<String>()
actors.insert("Densel Wanshington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")

// --------- Day 2 - How to create and use enums
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday // .tuesday
day = Weekday.friday // .friday
