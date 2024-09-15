
import Foundation

// Enums is the same as Struct except we know all cases at runtime

struct carModel {
    let brand: carBrandOption
    let model: String
}

struct carBrand {
    let title: String
}

// Enums are stored in memory the same way as a Struct but we cannot mutate them
enum carBrandOption {
    case ford
    case toyota
    case honda
    
    var title: String {
        
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
//        case .honda:
//            return "Honda"
        default:
            return "Default"
        }
        
    }
}
//var car1: cardModel = cardModel(brand: "Ford", model: "Fiesta")
//var car1: cardModel = cardModel(brand: "Coffee", model: "Focus")
//var car1: cardModel = cardModel(brand: "Toyota", model: "Camry")
//
//var brand1 = carBrand(title: "coffee")
//var brand2 = carBrand(title: "Toyota")
//
//var car1 = carModel(brand: brand1, model: "Fiesta")
//var car1 = carModel(brand: brand1, model: "Focus")
//var car1 = carModel(brand: brand2, model: "Camry ")

var car1 = carModel(brand: .ford, model: "Fiesta")
var car2 = carModel(brand: .toyota, model: "Focus")
var car3 = carModel(brand: .honda, model: "Camry")
print(car1)

var fordBrand : carBrandOption = .ford
print(fordBrand.title)
