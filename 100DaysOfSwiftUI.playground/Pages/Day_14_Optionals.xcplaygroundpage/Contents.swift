
import Foundation

// Day 14 - How to handle missing data with optionals
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil
if let unwrappedName = username {
    print("We got a user \(unwrappedName)")
}else {
    print("The optional was empty")
}


var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

// Day 14 - How to unwrap optionals with guard
func printSquare(of number: Int? ){
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) * \(number) is \(number) * \(number)")
}

var myVar: Int? = 3
if let unwrapped = myVar {
    // Run if myVar has a value inside
}

//guard let unwrapped = myVar else {
//    // Run if myVar doesn´t have a value inside
//}


// Day 14 --- How to unwrap optionals with nil coalescing

let captains = [
    "Enterprise": "Picard",
    "Voyager" : "Janeway",
    "Defiant" : "Sisko"
]

let new = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Boowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input2 = ""
let number2 = Int(input2) ?? 0

print(number2)

// Day 14 --- How to handle multiple optionals using optional chaining

let names = ["Jake", "Jack", "Allison","Maria"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book2 {
    let title: String
    let author: String?
}

var book2:Book2? = nil
let author = book2?author?.first?.uppercased() ?? "A"



// Day 14 --- How to handle function failure with optionals


enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
