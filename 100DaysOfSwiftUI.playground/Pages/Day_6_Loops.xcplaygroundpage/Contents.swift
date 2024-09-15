
import Foundation

// Day 6 ---------- How to use a for loop to reepat work

let platforms = ["iOS", "MacOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5*i)")
    print("The is \(i) times table")
    for j in 1...12 {
        print("   \(j) * \(i) is \(j*i) ")
    }
}

for i in 1...5{
    print("Counting from 1 through 5: \(i)")
}

for i in 1..<5{
    print("Counting from 1 up to 5: \(i)")
}

var lyric = "Hater gonna"

for _ in 1...5{
    lyric+="hate"
}
print(lyric)

//var palyndrome = "hola"
//var wordReversed: String = ""
//
//for i in palyndrome{
//    wordReversed = String(i) + wordReversed
//}
//print(wordReversed)

//var palyndrome = "hola"
//let reversedPalyndrome = String(palyndrome.reversed())
//print(reversedPalyndrome)

//Factorial

//let number = 5
//var factorial = 1
//for i in 1...number{
//    factorial *= i
//}
//print(factorial)

// number = 23

let number = 23
let stringNumber = String(number)
var sumNumbers = 0
for i in stringNumber{
    
    if let digit = Int(String(i)){
        sumNumbers += digit
    }
}
print(sumNumbers)


// Day 6 --------------- How to use a while loop to repeat work
var countdown = 10

while countdown > 0 {
    print("\(countdown)..")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)
var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical hit!")

var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}

// Day 6 ------ How to skip loop items with break and continue

// CONTINUE
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14


// BREAK
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
