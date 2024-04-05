import Cocoa

var greeting = "Hello, playground"

var name = "Some Name"
name = "Another Name"

let user = "Some User"
print(user)

print(user.count)
print(user.hasPrefix("Some"))


let score = 10
let doubleScore = score + 10
let halfScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 4))

let id = Int.random(in: 1...100)

let name1 = "Some Name"
let age1 = 20
let message = "I am \(name1) and I am \(age1) years old."
print(message)


var colors = ["Red", "Green", "Blue"]
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

print(colors[1])

colors.append("Orange")
colors.remove(at: 3)

print(colors.contains("Purple"))


let employee = ["name": "Some Name", "job": "Some Job"]
print(employee["name", default: "Unknown"])


var setNumbers = Set([1, 2, 3, 4])
print(setNumbers)
setNumbers.insert(8)
print(setNumbers)
setNumbers.contains(2)


enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday


let player1: String = "Some Player"
let number1: Int = 10
let distance: Double = 2.1
var isEnabled: Bool = true

var albums: [String] = ["Album 1", "Album 2", "Album 3"]
var user1: [String: String] = ["id": "Some Thing"]
var books: Set<String> = Set(["Book 1", "Book 2", "Book 3"])

var teams: [String] = [String]()


let age = 16

if age < 12 {
    print("You cant vote")
} else if age < 18 {
    print("You can vote soon")
} else {
    print("You can vote")
}


let temp = 24

if temp > 20 && temp < 32 {
    print("This is some temperature")
}


enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It is sun")
case .rain:
    print("It is rain")
default:
    print("It is weather")
}


let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}


for i in 1...10 {
    print("It is the number \(i)")
}

for _ in 1...10 {
    print("Some numbers")
}


func makeNumbers(number: Int) {
    for i in 1...number {
        print("We are at number \(i)")
    }
}

makeNumbers(number: 10)


func rollDice() -> Int {
    Int.random(in: 1...6)
}
let result = rollDice()
print(result)


func getUser() -> (firstName: String, lastName: String) {
    (firstName: "First Name", lastName: "Last Name")
}

let user2 = getUser()
print("Name: \(user2.firstName) \(user2.lastName)")


func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let value = "Some Name"
let result1 = isUppercase(value)
print(result1)
