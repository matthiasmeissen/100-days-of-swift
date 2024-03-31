import Cocoa

var greeting = "Hello, playground"


protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I am driving \(distance)km")
    }
    
    func openSunroof() {
        print("This is the sun.")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I am cycling \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("This is too slow. I will use another vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 120)


func getRandomNumber() -> some Equatable {
    Int.random(in: 1...100)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmed1 = quote.trimmed()

let lyrics = """
This is some song
That goes here along
It can be assigned
And will be hyped
"""

print(lyrics.lines.count)


struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let book1 = Book(title: "Book 1", pageCount: 200, readingHours: 4)
print(book1.readingHours)

let book2 = Book(title: "Book 2", pageCount: 400)
print(book2.readingHours)


protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    func summary()
}

struct House {
    var rooms = 4
    var cost = 200_000
    var agent = "Agent 1"
    
    func summary() {
        print("This House has \(rooms) rooms, costs \(cost) and is managed by \(agent)")
    }
}

struct Office {
    var rooms = 10
    var cost = 400_000
    var agent = "Agent 2"
    
    func summary() {
        print("This Office has \(rooms) rooms, costs \(cost) and is managed by \(agent)")
    }
}

let house = House()
let office = Office()
print(house.summary())
print(office.summary())
