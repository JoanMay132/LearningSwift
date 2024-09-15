

import Foundation


// Arrays,sets
// An array is a collection of data points

var myTitle: String = "Hello everybody"
var myTitle2: String = "Hello World"

// Tuple

//func doSomething(value: (myTitle:String, myTitle:String)){
//    
//}
//
//doSomething(value: (myTitle, myTitle2))

// Custom data model
struct TitlesModel {
    let title: String
    let title2: String
}

func doSomething2(value: TitlesModel){
    
}

//doSomething2(value: <#T##TitlesModel#>(title: myTitle, title2: myTitle2))
//

// -------------------------------------------------------------
let apple = "Apple"
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
let fruits3: Array<String> = [apple,orange]

let myBool: [Bool] = [true, false,false, true, false]
func doSomething3(value: [String]){
    
}
var fruitsArray: [String] = ["Apple", "orange","Banana", "Mango","Strawberry"]

let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first {
    // first item
}

fruitsArray = fruitsArray + ["Papaya"]

fruitsArray.append("Durazno")
fruitsArray.append("Kiwi")
fruitsArray.append(contentsOf: ["Tomato","Pera"])

// Count = 1 , 2 ,3 , 4
// Indexes = 0 , 1 ,2 ,3

fruitsArray[2]

if fruitsArray.indices.contains(10){
    let item  = fruitsArray[10]
}
let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last

fruitsArray.insert("Watermelon", at: 2)
fruitsArray.insert(contentsOf: ["Tangerine", "Blueberry"], at: 2)
fruitsArray.remove(at: 2)
print(fruitsArray)


struct ProductModel {
    let title: String
    let price: Int
}

var myProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 5),
    ProductModel(title: "Product 3", price: 20),
    ProductModel(title: "Product 4", price: 10),
    ProductModel(title: "Product 5", price: 30),
    ProductModel(title: "Product 6", price: 24),
    ProductModel(title: "Product 7", price: 10)
]

var finalFruits: Array<String> = ["Apple", "Watermelon", "Banana"]
print(finalFruits)
var fruitSet: Set<String> = ["Apple", "Watermelon", "Banana", "Apple"]
print(fruitSet)
