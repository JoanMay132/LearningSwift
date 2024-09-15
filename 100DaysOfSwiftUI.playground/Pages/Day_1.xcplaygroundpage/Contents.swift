

import Foundation

// Day 2 - How to create variables and constants
let actor = "Denzel Washington"
let fileName = "paris.jpg"
let result = "You win!"

// Day 2 - How to create strings
let quote = "Then he tapped a sign saying \"Believe\" and walked away"
let movie = """
A day in
a life of an
Apple Engineer

"""

let nameLength = actor.count
print(nameLength)
print(result.uppercased() )

print(movie.hasPrefix("A day"))
print(fileName.hasSuffix(".jpg"))

//---------------------------------------------
// Day 2 - How to store whole numbers
let score = 10
let reallyBig = 100_000_000
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter = counter + 5
counter+=5
print(counter)

// Day 2 - How to store decimal numbers
 
let number = 0.1 + 0.2

print(number)
let a = 1
let b = 2.0
let c = Double(a) + b
print(c)

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var name = "Nicolas Cage"
name = "Joan May" // name = 57 is not allowed

var rating = 5.0
rating *= 2
