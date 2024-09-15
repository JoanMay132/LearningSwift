

import Foundation


// The goal is to loop from 1 through 100, and for each number:
// If it´s a multiple of 3, print "Fizz".
// If it's a multiple of 5, print "Buzz".
// If it's a multiple of 3 and 5, print "FizzBuzz"
// Otherwise, just print the number

//var number = 0
//while number<100{
//    number += 1
//    if (number % 3) == 0 && (number % 5) == 0 {
//        print("FizzBuzz")
//    }else if (number % 3) == 0 {
//        print("Fizz")
//    }else if (number % 5) == 0{
//        print("Buzz")
//    }
//    else {
//        print(number)
//    }
//    
//}

var number = 0

while number<100{
    number += 1
    guard !(number % 3 == 0 && number % 5 == 0) else {
        print("FizzBuzz")
        continue
    }
    guard !(number % 3 == 0) else {
        print("Fizz")
        continue
    }
    guard !(number % 5 == 0) else {
        print("Buzz")
        continue
    }
    print(number)
}
