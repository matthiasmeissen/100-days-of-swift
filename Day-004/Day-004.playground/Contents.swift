import Cocoa

var greeting = "Hello, playground"

let name: String = "Some Name"
let score: Int = 10
let number: Double = 20.4
let authenticated: Bool = true

let albums: [String] = ["Album 1", "Album 2", "Album 3"]
let user: [String: String] = ["name": "User Name"]
let books: Set<String> = Set(["Book 1", "Book 2", "Book 3"])

var teams: [String] = [String]()
var cities: [String] = []
var types = [String]()

enum Styles {
    case style1, style2, style3
}

var style = Styles.style1
style = .style2

let username: String
username = "Name"
print(username)

let someNames = ["Tim", "Anna", "Jonas", "Anna", "Jones"]
print(someNames.count)
let individualNames = Set(someNames)
print(individualNames.count)
