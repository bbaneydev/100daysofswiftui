import Cocoa

// Day 2
// How to store truth with Booleans-------------------------------------------------------
let goodDogs = true
var gameOver = false
gameOver.toggle() // <-- toggles from true to false
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated


// String concatenation------------------------------------------------------------------
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let name = "Billy"
let age = 30
let message = "Hello, my name is \(name) and I'm \(age) years old." // <-- String Interpolation

print("5 x 5 = \(5 * 5)")


// Checkpoint 1--------------------------------------------------------------------------
let celsius = 25.7
let fahrenheit = (9/5 * celsius) + 32
let temperature = "The current temperature is \(celsius)°C or \(fahrenheit.rounded())°F"
print(temperature)
