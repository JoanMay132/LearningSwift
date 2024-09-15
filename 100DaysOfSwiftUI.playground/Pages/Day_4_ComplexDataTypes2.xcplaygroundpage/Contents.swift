
import Foundation

// Day 4 How to use type annotations

let surname: String = "Lasso"
var score: Int = 0

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.1415
var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["Id" : "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
            
//When we have the structure of the data we dont need the semicolon structure

// Example
var soda: [String] = ["Coca", "Fanta", "Pepsi"]

var teams: [String] = [String]()
// It could be...
var cities: [String] = []
var clues = [String]()

var humans = [String]()
humans.append("Gorila")
print(humans)

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.light
style = .dark

let username: String
// lots of complex logic
username = "@JoanMay132"
// lots more complex logic
print(username)
