
import Foundation


// Your input is this:
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


//Your job is to:
//
//Filter out any numbers that are even
//Sort the array in ascending order
//Map them to strings in the format “7 is a lucky number”
//Print the resulting array, one item per line



func luckyNums(_ numbers: [Int]) -> (evenNumbers: [Int], sortedNumbers: [Int], mapNumbers: [String]){
    let evenNumbers = luckyNumbers.filter { $0 % 2 != 0}

    let sortedNumbers = luckyNumbers.sorted()

    let mapNumbers = luckyNumbers.map{"\($0) is a lucky number"}
    
    return (evenNumbers, sortedNumbers, mapNumbers)
}
let results = luckyNums(luckyNumbers)
print("Even numbers are: \(results.evenNumbers)")
print("Sorted numbers are : \(results.sortedNumbers)")
print("Map numbers are: \(results.mapNumbers)")
