
import Foundation

//Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:
//
//A property storing how many rooms it has.
//A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
//A property storing the name of the estate agent responsible for selling the building.
//A method for printing the sales summary of the building, describing what it is along with its other properties.

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var estateAgent: String { get }
    func salesSummary()
    
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    
    func salesSummary(){
        print("Here we have this house with \(rooms) and it has a cost of \(cost) and your agent is \((estateAgent))")
    }
}

extension House {
    init(rooms: Int, estateAgent: String){
        self.rooms = rooms
        self.estateAgent = estateAgent
        self.cost = rooms * 25000
    }
    
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    
    func salesSummary(){
        print("Here we have this beautiful Office with \(rooms) and it has a cost of \(cost) and your agent is \((estateAgent))")
    }
}

extension Office {
    init(rooms: Int, estateAgent: String){
        self.rooms = rooms
        self.estateAgent = estateAgent
        self.cost = rooms * 133400
    }
    
}

let StarkHouse = House(rooms: 5, estateAgent: "Charvis")
StarkHouse.salesSummary()

let StarkBuilding = Office(rooms: 3, estateAgent: "Peper")
StarkBuilding.salesSummary()
