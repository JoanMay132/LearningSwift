
import Foundation

// Day 11 ----- How to limit access to internal data using access control

//struct BankAccount {
//    private var funds = 0
//
//    mutating func deposit(amount: Int) {
//        funds += amount
//    }
//
//    mutating func withdraw(amount: Int) -> Bool {
//        if funds >= amount {
//            funds -= amount
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
//var bankAccount = BankAccount()
//bankAccount.deposit(amount: 100)
//let success = account.withdraw(amount: 200)
//
//if success {
//    print("Withdrew money successfully")
//} else {
//    print("Failed to get the money")
//}
//
//bankAccount.funds


/*
 
 Use private for “don’t let anything outside the struct use this.”
 Use fileprivate for “don’t let anything outside the current file use this.”
 Use public for “let anyone, anywhere use this.”
 
 private(set)
 */


// Day 11 ----- Static properties and methods

struct School {
    static var studentCount = 0
    
    static func add(studentName: String){
        print ("\(studentName) joined to Harvard!")
        studentCount += 1
    }
}

School.add(studentName: "Faride Trujeque")


/*
 self the current value of a struct 55 , "hello", true
 Self the current type of struct    Int, String, Bool
 */

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFileName = "settings.json"
    static let homeURL = "https://adfsd.com"
}

struct Employee3 {
    let username: String
    let password: String
    
    static let example = Employee3(username: "ADfa", password: "13af")
}
