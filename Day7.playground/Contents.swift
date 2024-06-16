import Cocoa

// Day 7
// How to reuse code with functions------------------------------------------------------------------------
func showWelcome() {
    print("Some code here")
}
showWelcome()

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)


// How to return values from functions--------------------------------------------------------------------
let root = sqrt(169) // <-- get the square root of a number

func rollDice() -> Int { // <-- to return a value in swift, use an arrow function, and point the arrow towards the data type to be returned
    return Int.random(in: 1...6)
}

let result = rollDice()

func letters(a: String, b: String) -> Bool {
//    if a.sorted() == b.sorted() { // <-- sort the two strings to put them in abc order, then return true if they're the same or false if they're different w/ if statement
//        return true
//    }
//    return false
    a.sorted() == b.sorted() ? true : false // <-- with ternary -- with one line of code in swift, you can omit the return keyword
}

letters(a: "abc", b: "cda")

func pythagoras(a: Double, b: Double) -> Double {
    sqrt((a * a) + (b * b))
}
let c = pythagoras(a: 3, b: 4)
print(c)


// How to return multiple values from functions------------------------------------------------------------
// Swift can't know ahead of time if a dictionary key is present, when you access tuple values, Swift knows it's there
// Tuples HAVE to have the data, dictionaries may or may not have the data you're looking for
func getUser() -> (firstName: String, lastName: String) { // <-- to return multiple values from a function, use a tuple -- tuples are like arrays, but inside of ()
    (firstName: "Taylor", lastName: "Swift") // <-- don't have to respecify firstName and lastName, because it's a tuple, swift already knows that the name must match the order we provided
    // so could do this instead for the same output:
    //("Taylor", "Swift") <-- Read like an array (0, 1, 2, etc)
}

// Can extract the data from the tuple into individual constants <-- destructuring
let (firstName, lastName ) = getUser() // <-- you can omit one of them by using an _ like this:   let (firstName, _) = getUser()


// How to customize parameter labels----------------------------------------------------------------------
let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

func isUpperCase(_ string: String) -> Bool { // <-- underscore omits the external need of a name
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let stringResult = isUpperCase(string) // <-- the _ in the function declaration allows us to omit the first string, so instead of being isUpperCase(string: string), we can do what we have here

// Another example
func printTimesTable(for number: Int) { // <-- the "for" allows us to use for on line 75, for better readability. Allows us to customize the parameter to use later, MUST still use "number" IN the func.
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5)
//printTimesTable(5) // <-- this is what you'd do if you were using an _ instead of the name "for"
