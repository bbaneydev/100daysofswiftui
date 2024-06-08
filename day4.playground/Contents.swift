import Cocoa

// Day 4
// How to use type annotation----------------------------------------------------
// type annotation allows you to override swifts initial implicit type
let surname: String = "Lasso"
var score: Double = 0 // <-- normally would be inferred as an int, but you can change it to double like this

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
// empty array declaration
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

// constants can be assigned later in the code, and initially left blank. Swift will still understand that it's a constant and won't allow you to use it until it has been declared or reassign it. You do it with type annotation
let username: String
// lots of complex logic
username = "Bbaney"
// lots more complex logic
print(username)


// Checkpoint 2
var strings = ["Oden", "Freya", "Albini", "Freya"]
print(strings.count)
let unique = Set(strings)
print(unique.count)
