import Foundation


// Day 2 - How to store truth with Booleans

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
var gameOver = false
print(gameOver)
gameOver.toggle()
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// --------- Day 2 - How to join strings together
let firstPart = "Hello, "
let secondPart = "World!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"

let lyric = people + "gonna" + action
let luggageCode = "1"+"2"+"3"+"4"+"5"+"6"

let name = "Joan"
let age = 23

let message = "Hello, my name is \(name) and I'm \(age)"
print(message)

print("5 x 5 is \(5 * 5)")
