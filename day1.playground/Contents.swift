import Cocoa

// Day 1.
// How to create variables and constants--------------------------------------------------------------------------------------------------------------

// When possible, try to prefer using constants over variables as much as you can!
var greeting = "Hello, playground" // <-- creating a new variable
var name = "Ted"
name = "Billy"
name = "Caeley" // <-- reassigning variables

let character = "Daphne" // <-- let keyword in swift means constant

var playerName = "Roy"
print(playerName) // <-- how to print in swift

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let dogBreed = "Husky"
let meaningOfLife = "How many roads must a man walk down?"


// How to create strings----------------------------------------------------------------------------------------------------------------------------

let actor = "Denzel Washington"
let filename = "paris.jpg"
// Multi line string, triple quotes MUST be on their own line
let movie = """
A day in
the life of a
Apple engineer
"""

let nameLength = actor.count // <-- count characters in a string
print(nameLength)

print(actor.uppercased()) // <-- uppercase all letters in a string

print(movie.hasPrefix("A day")) // <-- sees if a string starts with specific characters
print(filename.hasSuffix(".jpg")) // <-- looks to see if a string ends with specific characters


// How to store whole numbers-----------------------------------------------------------------------------------------------------------------------

let score = 10
let reallyBig = 100_000_000 // <-- use underscores to break up large numbers

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let squaredScore = score * score
let halfScore = score / 2

var counter = 10
counter += 5 // <-- shorthand operator to change value

let number = 120
print(number.isMultiple(of: 3)) // <-- checks to see if the value is a multiple of the number you give
print(120.isMultiple(of: 3)) // <-- this also works


// How to store decimal numbers----------------------------------------------------------------------------------------------------------------------
// cannot mix ints and doubles = called type safety
let num = 0.1 + 0.2
print(num)

let a = 1
let b = 2.0
let c = a + Int(b) // <-- to add them together, would have to use implicit binding

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let in1 = 3

var rating = 5.0
rating *= 2.0 // <-- this still works
