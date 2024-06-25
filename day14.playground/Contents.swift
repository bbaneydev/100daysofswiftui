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


// How to unwrap optionals with guard----------------------------------------------------------------------------
func printSquare(of number: Int?) {
    // if number isn't nil, number = number, else print the statement and return. Using guards, if there are no values, you must exit the function immediately, so you have to return out of the guard statement
    guard let number = number else {
        print("Missing input")
        return
    }
    // if guard finds a value, you can use that value outside of the scope
    print("\(number) x \(number) is \(number * number)")
}


// How to unwrap optionals with nil coalescing------------------------------------------------------------------
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

// If it's empty, sends back N/A, else it gives you the value you were looking for -- after this is ran, it no longer is an optional. It's value would just become n/a or the value
let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

//struct Book {
//    let title: String
//    let author: String?
//}
//
//let book = Book(title: "Beowulf", author: nil)
//let author = book.author ?? "Anonymous"
//
//let input = ""
//let num = Int(input) ?? 0


// How to handle multiple optionals using optional chaining---------------------------------------------------
let names = ["Arya", "Bran", "Robb", "Sansa"]
// If we can get a randomElement, uppercase it. If we can't, chosen is "No one"
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)


// How to handle function failure with optionals-------------------------------------------------------------
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
// or
let user = (try? getUser(id: 23)) ?? "Anonymous"


// Checkpoint 9---------------------------------------------------------------------------------------------
var arr = [Int]()

let randomNum = arr.randomElement() ?? Int.random(in: 1...100)
print(randomNum)
