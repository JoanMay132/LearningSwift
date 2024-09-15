
import Foundation

func myFirstFunction(){
    print("This is my first function")
    mySecondFunction()
    myThirdFunction()
}
myFirstFunction()

func mySecondFunction(){
    print("This is my second function")
}

func myThirdFunction(){
    print("This is my third function")
}

func getUserName () -> String{
    let userName: String = "Joan"
    return userName
}

func checkIfUserIsPremium() -> Bool{
    return false
}

let name : String = getUserName()

// ------------------- ------------------- ------------------- -------------------

func showScreen(){
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)
    
    if status == true{
        print("Show home screen")
    }else{
        print("Show Onboarding Screen")
    }
}

showScreen()


func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool{
   
    
    if profileIsCreated && didCompleteOnboarding{
        doSomethingElse(someValue: didCompleteOnboarding)
        return true
    }else{
        return false
    }
}

//let status: Bool = checkUserStatus()
//print(status)

func doSomethingElse(someValue: Bool){ }


// -----------------------------------

//func doSomething() -> Void { } // Void does not do nothing

doSomething()
func doSomething() -> String{
    print("Execute 1")
    
    var title: String = "Avengers"
    
    if title == "Avengers" {
        return "Marvel"
    }else{
        return "DC"
    }
    
}

checkIfTitleIsAvengers()
func checkIfTitleIsAvengers() -> Bool {
    var title : String = "Avengers"
    
    // Make sure title == Avengers
    
    guard title == "Avengers" else {
        
        return false
    }
    return true
    
    
}

checkIfTitleIsAvengers2()
func checkIfTitleIsAvengers2() -> Bool {
    var title : String = "Avengers"
    
    // Make sure title == Avengers
    
    guard title == "Avengers" else {
        
        return false
    }
    return true
    
    
}


// Calculated variables are basically functions
// Generally food for when you don´t need to pass data into the function
let number1 = 5
let number2 = 8

func calculateNumbers() -> Int{
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int{
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

var calculatedNumber: Int {
    return number1 + number2
}
