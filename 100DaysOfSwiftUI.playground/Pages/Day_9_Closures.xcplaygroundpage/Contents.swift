
import Foundation

// Day 9 --- How to create and use closures

func greetUser() {
    print("Hi there")
}

greetUser()
var greetCopy = greetUser

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello2("Taylor")
var greetCopy2: () -> Void = greetUser

let team = ["Gloria", "Suzanne","Piper", "Tifanny", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool{
    if name1 == "Suzanne" {
        return true
    }else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne"{
        return true
    }else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
})
print(captainFirstTeam)

// DAY 9 ---- How to use trailing closures and shorthand syntax

let team2 = ["Gloria", "Suzanne","Piper", "Tifanny", "Tasha"]

let sorted2 = team.sorted {
    if $0 == "Suzanne" {
        return true
    }else if $1 == "Suzanne"{
        return false
    }
    return $0 < $1
}

let reverseTeam = team.sorted{ $0 > $1 }

let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased()}
print(uppercaseTeam)

// Day 9  ---- How to accept functions as parameters

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first() 
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work!")
} third: {
    print("This is the third work!")
}
