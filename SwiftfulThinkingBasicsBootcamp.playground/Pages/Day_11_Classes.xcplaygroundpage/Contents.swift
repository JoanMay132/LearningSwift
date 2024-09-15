

import Foundation

// Classes are slow!
// Classes are stored in the Heap (memory)
// Objects in the Heap are reference types
// Reference types point to an object in memory and update the object in memory

// Structs are fast!
// Structs are stored in the Stack (memory)
// Objects in the Stack are value types
// Value types are copied & mutated

// All the data needed for some screen
class screenViewModel {
    
    let title: String
    private (set) var showButton: Bool
    
    // Same init as a struct, except structs have implicit inits
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // runs as the object is being removed from memory
        // Structs do NOT have deinit!
    }
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool){
        showButton = newValue
    }
}

// Notice that we are using a "let", because:
// the object itself is not changin
// the data inside the object is changing
let viewModel: screenViewModel = screenViewModel(title: "Screen 1", showButton: true)
//viewModel.showButton = false
let value = viewModel.showButton
viewModel.updateShowButton(newValue: false)
viewModel.hideButton()
struct myScreen{
    
}
