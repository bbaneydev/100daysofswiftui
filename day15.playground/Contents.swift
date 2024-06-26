import Cocoa

// Day 15
// Review----------------------------------------------------------------------------
// Remember in Dictionaries, there must be a default value or a nill coersion
let employee = [
    "name": "Taylor",
    "job": "Singer"
]

print(employee["job", default: "Unknown"])

// Sets are same as arrays except can't have duplicate items, and are in NO particular order
var numbers = Set([1, 1, 3, 5, 7, 9])
print(numbers)
// to add to a Set, can't append, there is no ordering to a Set
numbers.insert(10)

// Tuples are good for getting multiple different values back from the same function
