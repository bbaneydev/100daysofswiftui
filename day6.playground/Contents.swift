import Cocoa

// Day 6
// For Loops-------------------------------------------------------------------
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 { // <-- prints numbers in the range of 1 through 12
    print ("5 x \(i) is \(5 * i)")
}

for i in 1..<5 {
    print("Counting from 1 to 5: \(i)")
}

var lyric = "Haters gonna"
for _ in 1...5 { // <-- if you don't want to include your normal "i" to iterate with, you can use _ to leave it blank
    lyric += " hate"
}

print(lyric)


// While Loops-----------------------------------------------------------------
var countdown = 10
while countdown > 0 {
    print("\(countdown)..")
    countdown -= 1
}
//print("Blast off!")

let id = Int.random(in: 1...1000) // <-- creates an int in the range of 1 through 1000
let amount = Double.random(in: 0...1)

var roll = 0

//while roll != 20 {
//    roll = Int.random(in: 1...20)
//    print("I rolled a \(roll)")
//}

print("Critical Hit!")

// Skip items with break and continue------------------------------------------
// continue key word skips the current iteration in your loop and moves to the next item
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]
for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue // <-- skipping any item in the array that doesn't end with .jpg, so the print at the bottom gives me.jpg, sophie.jpg
    }
    print(filename)
}

let a = 4
let b = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: a) && i.isMultiple(of: b) {
        multiples.append(i) // <-- .push for swift
        if multiples.count == 10 { // <-- if the array current length is 10
            break
        }
    }
}

print(multiples)


// Checkpoint 3------------------------------------------------------------------
// FizzBuzz
//for num in 1...100 {
//    if num % 3 == 0 && num % 5 == 0 {
//        print("\(num) = FizzBuzz")
//    } else if num % 3 == 0 {
//        print("\(num) = Fizz")
//    } else if num % 5 == 0{
//        print("\(num) = Buzz")
//    } else {
//        print(num)
//    }
//}

// Can also use .isMultipleOf(of:)
for num in 1...100 {
    if num.isMultiple(of: 3) && num.isMultiple(of: 5) {
        print("\(num) = FizzBuzz")
    } else if num.isMultiple(of: 3) {
        print("\(num) = Fizz")
    } else if num.isMultiple(of: 5) {
        print("\(num) = Buzz")
    } else {
        print(num)
    }
}
