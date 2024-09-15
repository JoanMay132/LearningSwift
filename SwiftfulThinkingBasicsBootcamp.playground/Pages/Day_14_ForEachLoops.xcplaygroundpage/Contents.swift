

import Foundation

for item in 0..<100 {
    print(item)
}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray {
    print(item)
    
    if item == "Gamma"{
        secondArray.append(item)
    }
}
print(secondArray)

struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLesons = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel(title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: true),
]

var favoriteLesson : [LessonModel] = []

for lesson in allLesons {
    if lesson.isFavorite {
        favoriteLesson.append(lesson)
    }
}
print(favoriteLesson)

for (n,x) in allLesons.enumerated(){
    
    if n == 1 {
       // break
        continue
    }
    
    print("index: \(n) || lesson:\(x)")
}
