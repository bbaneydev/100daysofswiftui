import Cocoa

// Day 14
// How to handle missing data with optionals-----------------------------------------------------------------------
let opposites = ["Mario": "Wario", "Luigi": "Waluigi"] // <-- remember this is a dictionary
let peachOpposite = opposites["Peach"]

// most common way to write optionals
if let marioOpposite = opposites["Mario"] { // <-- if opposites["Mario"] exists, let marioOpposites = "Mario's opposite is Wario"
    print("Mario's opposite is \(marioOpposite)")
}

// another way to write optionals
var username: String? = nil

if let unwrappedName = username {
    print("We've got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}


// this doesn't work without unwrapping, because the function has to have a value to be called, but once we do our unwrapped if let statement on line 30, it would work
func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

// number that is declared here, is only available in this code block it's called "shadowing"
if let number = number {
    print(square(number: number))
}

