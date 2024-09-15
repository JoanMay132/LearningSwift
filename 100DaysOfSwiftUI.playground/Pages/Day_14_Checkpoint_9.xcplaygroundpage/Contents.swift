

import Foundation

// Day 14 Checkpiubtbynver 9
//
//Your challenge is this: write a function that accepts an optional array of integers, and returns one randomly. If the array is missing or empty, return a random number in the range 1 through 100

func randomly(_ numbers: [Int]? ) -> Int{numbers?.randomElement() ?? Int.random(in: 1...100)}
print(randomly(nil))
print(randomly([2,1]))
