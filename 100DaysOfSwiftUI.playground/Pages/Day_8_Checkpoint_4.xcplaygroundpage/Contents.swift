
import Foundation

// Write a function that accepts an intefer from 1 through 10,000 and returns the integer square root of that number
    // You can´t use the built-in sqrt() function or similar - You need to find the square root yourself.
    // If the number is less than 1 or greater than 10,000 you should throw an "out of bounds" error,.
    // You should only consider integer square roots
    // If you can´t find the square root, throw a "no root" error.

enum sqrtErrors: Error {
    case outOfBounds, noRoot
}

func sqrtNumber(_ number: Int ) throws -> Int{
    if number < 1 || number > 10000 {
        throw sqrtErrors.outOfBounds
    }
    var squareValue: Int = 0
    for num in 1...100 {
        if (num * num ) == number {
            squareValue = num
            return squareValue
        }
    }
    throw sqrtErrors.noRoot
}

let number = 11000

do {
    let result = try sqrtNumber(number)
    print ("Square number is \(result)")
}catch sqrtErrors.outOfBounds {
    print ("Number is out of bounds")
}catch sqrtErrors.noRoot{
    print ("No root value")
}
