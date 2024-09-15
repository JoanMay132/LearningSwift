
import Foundation

// Day 8 ... How to provide default values for parameters.

func printTimesTables (for number: Int, end: Int = 12 ){
    for i in 1...end {
        print("\(i) x \(number) is \(i*number)")
    }
}
printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

// Day 8 ... How to handle errors in functions

enum passwordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw passwordError.short}
    if password == "12345" { throw passwordError.obvious}
    
    if password.count < 8 {
        return "OK"
    }else if password.count < 10 {
        return "Good"
    }else {
        return "Excellent"
    }
}

//do {
//    try someRiskyWork()
//} catch {
//    print("Handle errors in here")
//}

let string = "1r32s"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
}catch passwordError.short{
    print("Please use a longer password")
}catch passwordError.obvious{
    print("I have the same combination on my luggage!")
}
catch{
    print("There was an error.")
}
