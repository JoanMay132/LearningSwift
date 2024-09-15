

import Foundation

// Constant (Can NOT change)
let someConstant: Bool = true
// Variable (Can change)
var someVariable: Bool = true

//  cannot assign to value: 'someConstant' is a 'let' constant
// someConstant = false

someVariable = false

var myNumber = 1.1234
myNumber = 2491
print(myNumber)


// If statements
var userIsPremium: Bool = false

if userIsPremium == true{
    print("1 - user is premium")
}else{
    print("Fuck you")
}

if userIsPremium{
    print("Papu")
}

if userIsPremium == false {
    print("3 - User is not premium")
}

if !userIsPremium {
    print("4 - User is not premium")
}
