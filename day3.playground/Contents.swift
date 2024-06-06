import Cocoa

// Day 3
// How to store ordered data in arrays-------------------------------------------------------------------------
// Arrays must only contain one data type
var beatles = ["John", "Paul", "George", "Ringo"]
var numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// adding to end of array
beatles.append("Caeley")

var scores = Array<Int>() // <-- Declare an empty array of integers
scores.append(100)
scores.append(80)
scores.append(85)

var albums = [String]() // <-- shorthand way to declare empty array
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count) // <-- count how many items in array

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2) // <-- remove entry at specific index
print(characters.count)

characters.removeAll() // <-- remove all array entries
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen")) // <-- see if array contains an entry

let cities = ["London", "Tokyo", "Rome", "Budapest"]
cities.sorted() // <-- sort array by lowest to highest num or abc order

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed() // <-- reverses list, NOTE: if printed, it will still show in the normal order, but Swift
// remembers that it is reversed. So when calling reversedPresidents, it will actually be in reverse order


// How to store and find data in Dictionaries------------------------------------------------------------------------------------
// Dictionaries are pretty much objects, dictionaries also include built in methods, a lot of the same ones Arrays use, like count, removeAll
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee["name"]) // <-- this will print out Optional("Taylor Swift"), Swift doesn't know if data is there or not
// Get around the optional by providing default values
print(employee["name", default: "Unkown"]) // <-- provide a default value

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]() // <-- declare empty dict, String as key, int as value
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Batman"] = "Penguin" // <-- change the value associated with Batman


// How to use Sets for fast data lookup-----------------------------------------------------------------------------------
// Sets don't allow duplicate data, and doesn't remove the order of the array, can give a random order
// Sets are MUCH faster than arrays
// You can sort sets, it returns an array with the sorted items, but uses a lot of array methods still
var actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicholas Cage",
    "Samuel L Jackson"
])

// Can't append to sets, must insert them
actors.insert("Ben Affleck")
print(actors.contains("Tom Cruise")) // <-- does set have specific entry


// How to create and use enums-------------------------------------------------------------------------------------------
// Allows you to set a range of values, so there can't be any mistakes in them
// can't select "Friday ", will throw an error, must be friday
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
// can also do this:
//enum Weekday {
//    case monday, tuesday, wednesday, thursday, friday
//}

var day = Weekday.monday
day = .tuesday // <-- swift knows you're looking in the enum, so you can just do .entry since day is already pointing towards an enum
day = .friday
