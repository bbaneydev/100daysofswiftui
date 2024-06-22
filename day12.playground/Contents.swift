import Cocoa

// Day 12
// How to create your own classes--------------------------------------------------------------------------------
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


// How to make one class inherit from another-------------------------------------------------------------------
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) a day.")
    }
}

class Developer: Employee { // <-- Developer: Employee tells swift that Developer is inheriting properties from the employee class
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() { // <-- Overriding the printSummary() function from the Employee class
        print("I'm a developer that will sometimes work \(hours) hours a day, but other times I spend hours arguing about whether code should be indented using spaces or tabs.")
    }
}

final class Manager: Employee { // <-- Final means that no other classes can inherit from this class
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()


// How to add initializers for classes--------------------------------------------------------------------------
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isCovertable: Bool
    
    // providing Car with it's own initializers requires us to also cover the init from the parent class (Vehicle), so you must include that init inside of the child class as well using "super.init"
    init(isElectric: Bool, isCovertable: Bool) {
        self.isCovertable = isCovertable
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isCovertable: false)


// How to copy classes------------------------------------------------------------------------------------------
// Changing a copy of the class, changes that data in every single copy. So "Taylor" is the username for every instance of the User class. This does not behave this way in Structs
//class User {
//    var username = "Anonymous"
//    
    // creating a function that allows us to "copy" the class, without changing the data everywhere
//    func copy() -> User {
//        let user = User {
//            user.username = username
//            return user
//        }
//    }
//}

//var user1 = User()
//var user2 = user1.copy()
//user2.username = "Taylor"
//print(user1.username)
//print(user2.username)
//

// How to create a deinitializer class-------------------------------------------------------------------------
//class User {
//    let id: Int
//    
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive!")
//    }
//    
//    deinit {
//        print("User \(id): I'm dead!")
//    }
//}
//
//var users = [User]()
// <-- Once the data is used, the deinit destroys that data, and allocates that memory back. Looping shows a good example of what it looks like
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//    users.append(user)
//}
//
//print("Loop is finished")
//users.removeAll() // <-- Even pushing the data into an array, the deinit won't happen, but as soon as you remove (delete) those items from the array, the deinit happens and destroys them still.
//print("Array is clear")


// How to work with variables inside classes------------------------------------------------------------------
class User {
    var name = "Paul"
}

var user = User() // <-- using var allows us to point the name to something entirely different
user.name = "Taylor" // <-- Prints "Taylor
user = User()
print(user.name) // <-- Prints "Paul"


// Checkpoint 7-----------------------------------------------------------------------------------------------
class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("woof woof...")
    }
}

class Corgi: Dog {
    override func speak() {
        print("I wiggle my butt, and woof woof...")
    }
}

class Poodle: Dog {
    override func speak() {
        print("I'm not sure why people buy me, I'm not very pretty.")
    }
}

class Cat: Animal {
    let isTame: Bool
    func speak() {
        print("Meoww")
    }
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Persian: Cat {
    override func speak() {
        print("Meow Meow Meow")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roarrrrrr")
    }
}

var oden = Dog(legs: 4)
oden.speak()

var freya = Corgi(legs: 4)
freya.speak()

var lucky = Poodle(legs: 4)
lucky.speak()

var max = Cat(isTame: false, legs: 4)
max.speak()

var tabs = Persian(isTame: true, legs: 4)
tabs.speak()

var lion = Lion(isTame: false, legs: 4)
lion.speak()
