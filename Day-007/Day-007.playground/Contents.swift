import Cocoa

var greeting = "Hello, playground"


func showWelcome() {
    print("Welcome to this program.")
}

showWelcome()

func makeMultiples(number: Int) {
    for i in 1...10 {
        print("Number is \(number * i)")
    }
}

makeMultiples(number: 4)


func makeMultiplesInRange(number: Int, max: Int) {
    for i in 1...max {
        print("Range to \(max) is \(number * i)")
    }
}

makeMultiplesInRange(number: 4, max: 20)


func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


func containsSameLetters(a: String, b: String) -> Bool {
    a.sorted() == b.sorted()
}
print(containsSameLetters(a: "Hello", b: "Hey"))


func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Firstname", lastName: "Lastname")
}
let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")


func getUser1() -> (String, String) {
    ("Firstname", "Lastname")
}
let (firstName, lastName) = getUser1()
print("Name: \(firstName) \(lastName)")


func adjustPlayer(name: String) {}
func adjustPlayer(type: String) {}
func adjustPlayer(value: String) {}


func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

print(isUppercase("Something"))


func makeNumbers(for number: Int) {
    for i in 1...number {
        print("This is \(i) in \(number)")
    }
}

makeNumbers(for: 8)
