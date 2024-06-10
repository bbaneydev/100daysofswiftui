import Cocoa

// Day 5.
// How to check if a condition is true or false---------------------------------------------------------------
//if someCondition {
//    print("Do something")
//}

let score = 85
if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85


if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test")
}

if age >= 18 {
    print("You're eligible to vote")
}

let ourName = "Billy"
let friendName = "Arnold"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Canada"
if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome \(name)")
}

var username = ""
if username.isEmpty { // <-- isEmpty is a built in method that checks to see if a string contains nothing
    username = "Anonymous"
}

print("Welcome, \(username)")


// How to check multiple conditions---------------------------------------------------------------------------------------------
let age = 16

if age >= 18 {
    print("You can vote in the next election")
} else {
    print("Sorry, you're too young to vote")
}

let temp = 25
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, helicopter, bike, car, scooter
}

let transport = TransportOption.airplane // <-- start with the enum.option, so that you can set transport to that enum, and can continue with the if statement like we did below

if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bike {
    print("I hope there is a bike path")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to use my scooter")
}


// How to use switch statements-------------------------------------------------------------------------------
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

// Every possible case from the enum must be covered, so you have to include a case for every single enum option
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forcase generator is broken!")
}

let place = "Metropolis"
switch place {
case "Gotham":
    print("You're batman")
case "Mega-City One":
    print("You're black panther")
default:
    print("Who are you?")
}


// Ternary Operators------------------------------------------------------------------------------------------
let myAge = 18
let canVote = myAge >= 18 ? "Yes" : "No"

let hour = 23

print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Caeley", "Mal"]
let crewCount = names.isEmpty ? "No one": "\(names.count) people"

enum Theme {
    case light, dark
}

let theme = Theme.dark
let background = theme == .dark ? "black" : "white"


