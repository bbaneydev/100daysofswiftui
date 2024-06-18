import Cocoa

// Day 9
// How to create and use closures---------------------------------------------------------------------------------
//let sayHello = { // <-- closure expression
//    print("Hi there!")
//}
//
//sayHello()

// Closure with parameters
// anonymous function
let sayHello = { (name: String) -> String in // <-- "in" marks the beginning of the function body in closures
        "Hi \(name)!"
}

sayHello("Taylor") // <-- closures don't have parameter names. So it's not sayHello(name: "Taylor"), just ("Taylor")

let team = ["Gloria", "Susan", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// Function to check to see if "Susan" if the first name in the array, if she's name two, return false, else sort the names until Susan is name1
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Susan" {
        return true
    } else if name2 == "Susan" {
        return false
    }
    
    return name1 < name2 // <-- regular sort in Swift
}

// sorting the team array by the function above in order to make Susan the first name in the array, uses the built-in sorted-by function in Swift

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

// anon. function for the same stuff up above ----- Remember that sorted functions always return a bool.
//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Susan" {
//        return true
//    } else if name2 == "Susan" {
//        return false
//    }
//    
//    return name1 < name2
//})
//print(captainFirstTeam)


// How to use trailing closures and shorthand syntax-------------------------------------------------------------------------------------------------
// shorthand syntax, removed the paramters, removed the return type (swift already knows in this situation that it must take in two strings and return a bool.
// We can also remove the "in" keyword, and allow swift to use built-in parameter names, which is $0, $1, $2, etc.
// Typically don't use shorthand if you need more than two parameters
let captainFirstTeam = team.sorted {
    if $0 == "Susan" {
        return true
    } else if $1 == "Susan" {
        return false
    }
    
    return $0 < $1
}

print(captainFirstTeam)

// reverse sorting the team
let reverseTeam = team.sorted { $0 > $1 } // Only has one line of code, so doesn't need a return statement, so it can become a one liner

// Filter to see which items in the array starts with a "T"
let tOnly = team.filter {$0.hasPrefix("T")}
print(tOnly)

// Map
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)


// How to accept functions as parameters--------------------------------------------------------------------------------------------------------------
func makeArray(size: Int, using generator: () -> Int) -> [Int] { // <-- generator is a closure function, we defined that down below as generateNumber()
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

// calling multiple closures as parameters in a function
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}
doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("this is the third work")
}


// Checkpoint 5.
var luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbers.filter{!$0.isMultiple(of: 2)}.sorted{$0 < $1}.map{"\($0) is a lucky number"}.forEach{print($0)}
