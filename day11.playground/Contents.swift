import Cocoa

// Day 11
// How to limit access to internal data using access control----------------------------
struct BankAccount {
    private(set) var funds = 0
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 50)
if success {
    print("Withdrew money successfully")
} else {
    print("Failed to print money")
}


// Static properties and methods--------------------------------------------------------
// allows access to the struct itself without having to make a new school or anything like that
// Doesn't need mutating, because the struct isn't a const or var, it's the struct itself
struct School {
    static var studentCount = 0
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
    
}

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "h4irf0rce0ne")
}


// Checkpoint 6
struct CarInfo {
    let model: String
    let numOfSeats: Int
    var currentGear = 1
    
    mutating func upGear(num: Int) {
        if currentGear + num <= 6 {
            print("You shifted from gear \(currentGear) to \(currentGear + num)")
            currentGear += num
        } else {
            print("Your car only goes to sixth gear, you're already in \(currentGear) gear, you can't go up that high.")
        }
    }
    
    mutating func downGear(num: Int) {
        if currentGear - num >= 1 {
            print("You down shifted from gear \(currentGear) to \(currentGear - num)")
            currentGear -= num
        } else {
            print("You can't go that far down. You can only down shift to 1st gear. You're already in \(currentGear)")
        }
    }
}

var car = CarInfo(model: "Mustang", numOfSeats: 5)
print(car.currentGear)
car.upGear(num: 4)
print(car.currentGear)
car.downGear(num: 3)
print(car.currentGear)
car.downGear(num: 3)

