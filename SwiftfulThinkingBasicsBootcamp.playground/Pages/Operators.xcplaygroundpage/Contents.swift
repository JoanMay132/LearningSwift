

import Foundation

var likeCount: Double = 2
var commentCount: Double = 0
var viewCount: Double = 100

likeCount+=1
if likeCount == 5{
    print("Post has 5 likes.")
}else{
    print("Post has less than 5 likes.")
}

if likeCount != 5 {
    print("Post does not have 5 likes.")
}

if likeCount>5{
    print("Post has more than 5 likes.")
}

if likeCount >= 5{
    print("Post has greather than or equal to 5 likes.")
}

if (likeCount >= 7 ) && (commentCount == 0){
    print("Post has greather than 4 likes and It does not have comments yet.")
}else {
    print("Post has 3 or less likes OR post has 0 cooments")
}

if (likeCount >= 7 ) || (commentCount == 0){
    print("Post has 3 or less likes OR post has 0 comments")
}

if (likeCount>4) && (commentCount > 0) || (viewCount >= 50){
    print("Post has greather than 4 likes OR It has more than 50 viewers")
}
var userIsPremium: Bool = true
var userIsNew: Bool = false

if userIsNew && userIsPremium{
    print("The user is new and has a premium suscription")
}else{
    print("It is a new user OR the user has a premium suscription")
}

if userIsNew || userIsPremium{
    print("It is a new user OR the user has a premium suscription")
}


// Addition
//likeCount = likeCount + 1
//likeCount+=1

// Substraction
// likeCount = likeCount - 1
// likeCount-= 1

// Multiplication
// likeCount = likeCount * 1.5
// likeCount*= 1.5

// Division

// likeCount = likeCount / 2
// likeCount /= 2

// Order of operations does matter
// PEMDAS
//likeCount = likeCount - 1 * 1.5
//likeCount = (likeCount - 1) * 1.5
