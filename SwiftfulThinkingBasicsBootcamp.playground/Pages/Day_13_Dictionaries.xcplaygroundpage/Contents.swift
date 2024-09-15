
import Foundation

// Number 23 Print 2 + 3 = 5


var finalFruits: Array<String> = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)

let item = finalFruits[1]

var fruitSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitSet)


var myFirstDictionary: [String : Bool] = [
    "Apple": true,
    "Orange":false
]
let item2 = myFirstDictionary["Apple", default: false]
print(item2)

var anotherDictionary : [String: String] = [
    "adm": "Apple",
    "ack" : "Banana"
]
let item3 = anotherDictionary["adm", default: "No Fruits"]
print(item3)

anotherDictionary["ZYS"] = "Mango"
anotherDictionary.removeValue(forKey: "adm")
print(anotherDictionary)

struct postModel {
    let id : Int
    let title : String
    let likeCount : Int
}

var postArray : [postModel] = [
    postModel(id: 1, title: "afa", likeCount: 2),
    postModel(id: 2, title: "asc", likeCount: 4),
    postModel(id: 3, title: "akf", likeCount: 8),
]

if postArray.indices.contains(1){
    let item = postArray[1]
    print(item)
}

var postDic : [String : postModel] = [
    "Aadk": postModel(id: 1, title: "afa", likeCount: 2),
    "kav" : postModel(id: 2, title: "asc", likeCount: 4),
    "kpa" : postModel(id: 3, title: "akf", likeCount: 8),


]

let myNewItem = postDic["kpa"]
print(myNewItem)
