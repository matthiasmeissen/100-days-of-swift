import Cocoa

var greeting = "Hello, playground"


let sayHello = {
    print("Hey there")
}
sayHello()


let sayHello1 = { (name: String) -> String in
    "Hey \(name)"
}
print(sayHello1("Name"))


func greetUser() {
    print("Hey User")
}
var greetCopy: () -> Void = greetUser
greetCopy()


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Name"
    } else {
        return "Unknown"
    }
}
let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


let team = ["Gloria", "Suzanne", "Pia", "Tiffany", "Nadja"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)


let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})
print(captainFirstTeam1)


let captainFirstTeam2 = team.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
}
print(captainFirstTeam2)


let reverseTeam = team.sorted {a, b in
    return a > b
}
print(reverseTeam)


let reverseTeam1 = team.sorted {
    return $0 > $1
}
print(reverseTeam1)


let reverseTeam2 = team.sorted { $0 > $1 }
print(reverseTeam2)


let tMember = team.filter{ $0.hasPrefix("T")}
print(tMember)


let uppercaseTeam = team.map{ $0.uppercased()}
print(uppercaseTeam)


func makeNumbers(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}
let rolls = makeNumbers(size: 20) {
    Int.random(in: 1...20)
}
print(rolls)


func generateNumber() -> Int {
    Int.random(in: 1...20)
}
let newRolls = makeNumbers(size: 20, using: generateNumber)
print(newRolls)


func doSomeThings(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("Do first thing")
    first()
    print("Do second thing")
    second()
    print("Do third thing")
    third()
    print("Done")
}

doSomeThings {
    print("This is the first thing")
} second: {
    print("This is the second thing")
} third: {
    print("This is the third thing")
}


let numbers = [7, 4, 38, 21, 16, 14, 12, 33, 31, 48]
var adjustedNumbers = numbers.filter { $0.isMultiple(of: 2)}.sorted { $0 < $1 }.map { "\($0) is a number" }
for element in adjustedNumbers {
    print(element)
}
