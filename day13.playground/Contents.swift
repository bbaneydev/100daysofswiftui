import Cocoa

// Day 13
// How to create and use protocols-------------------------------------------------------------------------------------------------------
// If structs  need to conform to multiple protocols, separate them by commas, "struct Car: Vehicle, isElectric {}"
protocol Vehicle { // <-- protocol functions CANNOT have function bodies
    var name: String { get } // <-- each vehicle must have a name, the { get }, allows us to read the name, but not change it
    var currentPassengers: Int { get set } // <-- each vehicle must list current number of passengers, it can be read and changed
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// Using the vehicle protocol, Car must have ALL the functions listed in the protocol, and they must all use the same data types that they did in Vehicle
struct Car: Vehicle {
    let name = "Car" // <-- can use constant here, because it's only readable, not writeable
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)mi")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bike: Vehicle {
    let name = "Bike"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)mi")
    }
}

func commute(distance: Int, using vehicle: Vehicle) { // <-- vehicle: Car can be changed to ANY class that conformed from the Vechicle protocol
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow, i'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

// function to take an array of vehicles, and estimate the time it takes to travel a distance
func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)mi")
    }
}

let car = Car()
commute(distance: 100, using: car)
let bike = Bike()
commute(distance: 15, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)


// How to use opaque return types---------------------------------------------------------------------------------
// Allows us to change our code more freely, Int could be changed to double, and it would still work. Swift understands what data is coming back
// Some allows us to keep options open, we're just returning something equatable <-- Typically used in SwiftUI for making layouts
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


// How to create and use extensions-------------------------------------------------------------------------------
var quote = " The truth is rarely pure and never simple "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines) // <-- long way to trim characters in strings, but is built into swift

// let's make an extension to make trimming easier
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var lines: [String] { // <-- makes an array of strings, and separates them at every line break into a new array. ( so if you have 20 lines, you'll have 20 arrays )
        self.components(separatedBy: .newlines)
    }
}

quote.trimmed() // <-- uses the new trimmed extension we created to trim the code

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
It's gonna be alright.
"""

print(lyrics.lines.count) // <-- returns 4, because there will be 4 arrays, since there is 4 lines

// Using a custom init in a struct --- Swift will no longer do it's own initializer, it'll use the custom one, so when calling that struct, it only takes in title and pageCount now
struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
    
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178) // <-- takes in the two custom initializers we made in the struct, automatically figures out the readingHours by what we've given it
print(lotr.readingHours)


// How to create and use protocol extensions--------------------------------------------------------------------------------
extension Collection { // <-- Using an extension on Collection to check if the collection is empty, this includes all collection types, arrays, dicts, sets, tuples, etc.
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person { // <-- made an extension of the Person protocol, that will add default value to the sayHello function
    func sayHello() {
        print("Hi, I'm \(name).")
    }
}

struct Employee: Person { // <-- created a struct from Person that just takes the name, since it can skip the sayHello function now, due to the extension.
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()


// Checkpoint 8-----------------------------------------------------------------------------------------------------------
protocol Building {
    var numOfRooms: Int { get }
    var costOfBuilding: Int { get }
    var estateAgent: String { get }
    
    func saleSummary()
}

struct House: Building {
    var numOfRooms: Int
    var costOfBuilding: Int
    var estateAgent: String
    
    func saleSummary() {
        print("The house has \(numOfRooms) bedrooms and costs $\(costOfBuilding), it's being sold by \(estateAgent)")
    }
}

struct Office: Building {
    var numOfRooms: Int
    var costOfBuilding: Int
    var estateAgent: String
    
    func saleSummary() {
        print("This building has \(numOfRooms) offices and costs $\(costOfBuilding), it's being sold by \(estateAgent)")
    }
}

var home = House(numOfRooms: 4, costOfBuilding: 175_000, estateAgent: "Caeley Collins")
var office = Office(numOfRooms: 25, costOfBuilding: 950_000, estateAgent: "Realtors Group")
home.saleSummary()
office.saleSummary()
