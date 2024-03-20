import Cocoa

var greeting = "Hello, playground"

let score = 85

if score > 80 {
    print("Done")
}

let name1 = "Some Name"
let name2 = "Other Name"

if name1 > name2 {
    print("It's \(name1) and \(name2)")
}

if name1 < name2 {
    print("It's \(name2) and \(name1)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

let username = ""

if username.isEmpty {
    print("Add a name")
}

let album = "Some Album"

if album.count > 4 {
    print("Longer Title")
} else {
    print("Short Title")
}

let temp = 24

if temp > 20 && temp < 30 {
    print("It is warm")
}

let age = 16
let hasConsent = true

if age > 18 || hasConsent {
    print("You are allowed to participate")
}

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.snow

switch forecast {
case .sun:
    print("Sun")
case .rain:
    print("Rain")
case .wind:
    print("Wind")
case .snow:
    print("Snow")
case .unknown:
    print("Unknown")
}

let city = "London"

switch city {
case "Munich":
    print("You are German")
case "New York":
    print("You are American")
case "Rome":
    print("You are American")
default:
    print("You are from somewhere")
}

let number = 20
let check = number < 40 ? "Young" : "Older"
print(check)

let members = ["Name 1", "Name 2", "Name 3"]
let count = members.isEmpty ? "No members" : "There are \(members.count) peopel here."
print(count)
