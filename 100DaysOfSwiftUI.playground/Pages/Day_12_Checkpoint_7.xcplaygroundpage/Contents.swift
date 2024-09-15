

import Foundation

// Day 12 .... Checkpoint 7

//Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.
//
//But there’s more:
//
//The Animal class should have a legs integer property that tracks how many legs the animal has.
//The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
//The Cat class should have a matching speak() method, again with each subclass printing something different.
//The Cat class should have an isTame Boolean property, provided using an initializer.
//I’ll provide some hints in a moment, but first I recommend you go ahead and try it yourself.


class Animals {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    

}
class Dog: Animals {
    func speak(){
        print("Guau guau")
    }
}
class Corgi: Dog {
    override func speak() {
        print("Guau!!")
    }
}
class Poodle: Dog {
    override func speak() {
        print("Bark!")
    }
}

class Cat: Animals {
    func speak() {
        print("Miau")
    }
    
    let isTame: Bool
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Persian: Cat {
    override func speak() {
        print("Meow!")
    }
}

class Lion: Cat {
    override func  speak() {
        print("Roooar!")
    }
}
