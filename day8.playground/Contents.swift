import Cocoa

// Day 8
// How to provide default values for parameters---------------------------------------------------
func printTimesTables(for number: Int, end: Int = 12) { // <-- gives end a default value of 12
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}
printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true) // <-- even if the array is removed, keepingCapacity will keep that length of the array and allocating the storage that was previously used before the array was emptied


// How to handle errors in functions--------------------------------------------------------------
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage")
} catch {
    print("There was an error")
}


// Checkpoint 4
enum squareError: Error {
    case outOfBounds, noRoot
}

//func squareRoot(of number: Int) throws -> Int {
//    if number > 10_000 || number < 1 { throw squareError.outOfBounds }
//    
//    for i in 1...100 {
//        if i * i == number {
//            return i
//        }
//    }
//    return number
//}


func squareRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw squareError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    throw squareError.noRoot // <-- counts as a return statement
}

let number = 6561

do {
    let result = try squareRoot(of: number)
    print("The square root of \(number) is \(result)")
} catch squareError.outOfBounds {
    print("Your number is either less than 1 or greater than 10,000, try again.")
} catch squareError.noRoot {
    print("Your number has no square root.")
} catch {
    print("There was an error")
}
