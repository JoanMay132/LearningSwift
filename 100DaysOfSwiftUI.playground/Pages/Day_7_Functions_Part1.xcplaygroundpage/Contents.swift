
import Foundation

// Day 7 ---- How to reuse code with functions

func showWelcome(){
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you.")
    print("can also set a custom range if you want")

}
showWelcome()

let number = 139

if number.isMultiple(of: 2){
    print("Even")
}else{
    print("odd")
}

let roll = Int.random(in: 1...20)

func printTimesTables(number: Int, end: Int){
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}
printTimesTables(number: 5, end: 20)

// Day 7 ... How to return values from functions

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


// Do two strings contain the same letters, regardless of their order?
// This function should:
// . Accept two string parameters.
// Return true if their letters are the same

// Tip: Call sorted() on a string to get its letters

func sameLetters(value1: String, value2: String) -> Bool {
    value1.sorted() == value2.sorted()
  
}
print(sameLetters(value1: "hola", value2: "aloasd"))


func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
    
}
let c = pythagoras(a: 3, b: 5)
print(c)

func sayHello() -> String{
    return "a"
}
sayHello()

// Day 7 ....... How to return multiple values from functions

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

func getUser() -> [String]{
    ["taylor","swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

func getUser2() -> [String: String]{
    ["firstName" : "Taylor", "lastName" : "Swift"]
}

let user2 = getUser2()
print("Name: \(user2["firstName", default: "?"])")

func getUser3() -> (firstName : String , lastName: String) {
    (firstName: "Taylor", lastName : "Swift")
}

let (firstName, lastName) = getUser3()

print("Name: \(firstName) \(lastName)")

// Swift can't know ahead of time if dictionary keys are present
// When you access tuple values, Swift knows it will be there
// We access values using user.firstName, not a string.
// Dictionary might contain hundreds of other values.


// Day 7 ..... How to customize parameter labels

let lyric = "I see a red door and I want it painted black."
print(lyric.hasPrefix("I see"))

func isUppercase(_ string : String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result2 = isUppercase(string)

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number ) is \(i * number)")
    }
}
printTimesTable(for: 5)
