import Cocoa

// Day 10
// How to create your own structs----------------------------------------------------------------------------------------------------------------
// These are similar to classes in JS
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)

// Structs are constants, functions must be marked as mutating func, to let swift know it will mutate data
//struct Employee {
//    let name: String
//    var vacationRemaining: Int
//    
//    mutating func takeVacation(days: Int) {
//        if vacationRemaining > days {
//            vacationRemaining -= days
//            print("I'm going on vacation")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining")
//        }
//    }
//}

// If the function in the struct is a mutating function, you must use a variable instead of a constant below, because you can't change a constant, and the struct would mutate it
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)


// How to compute property values dynamically--------------------------------------------------------------------------------------------------
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        // getters and setters
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue // <-- newValue is automatically provided by swift in a setter function
        }
    }
}
var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)


// How to take action when a property changes------------------------------------------------------------------------------------------------
struct Game {
    // This will automatically print the new score whenever the score value changes
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    // This will still automatically run when the array changes, it runs willSet before it changes the value and shows current value. Then it runs didSet to show the changes that were made
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New value will be \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)") // <-- oldValue is automatically baked into didSet
        }
    }
}
var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


// How to create custom initializers------------------------------------------------------------------------------------------------------
struct Player {
    let name: String
    let number: Int
    
    // Allows you to make your own customized initializers
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
