import Cocoa

var greeting = "Hello, playground"


let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Marios opposite is \(marioOpposite)")
}


var username: String? = nil

if let unwrappedName = username {
    print("We got as user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}


func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
}


func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 40)


let captains = [
    "Starship 1": "Captain 1",
    "Starship 2": "Captain 2",
    "Starship 3": "Captain 3"
]

let new = captains["Starship 4", default: "Not available"]


let shows = ["Show 1", "Show 2", "Show 3"]
let favorite = shows.randomElement() ?? "None"


struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Title 1", author: nil)
let author = book.author ?? "Not available"
print(author)


let input = ""
let number1 = Int(input) ?? 0
print(number1)


let names = ["Name 1", "Name 2", "Name 3", "Name 4"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")


struct Book1 {
    let title: String
    let author: String?
}

var book1: Book1? = nil
let author1 = book1?.author?.first?.uppercased() ?? "Name"
print(author1)


enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 20) {
    print("User: \(user)")
}

let user = (try? getUser(id: 20)) ?? "Unknown"

print(user)


func randomInt(numbers: [Int]?) -> Int {
    numbers?.randomElement() ?? Int.random(in: 1...100)
}

let numbers = [4, 8, 12, 20, 40]

print(numbers.randomElement() ?? Int.random(in: 1...100))
