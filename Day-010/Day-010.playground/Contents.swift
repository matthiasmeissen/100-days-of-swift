import Cocoa

var greeting = "Hello, playground"


struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let album1 = Album(title: "Title 1", artist: "Artist 1", year: 2020)
let album2 = Album(title: "Title 2", artist: "Artist 2", year: 2021)

print(album1.title)
print(album2.artist)

album1.printSummary()
album2.printSummary()


struct Player {
    let name: String
    var livesRemaining: Int
    
    mutating func handleAttack(lives: Int) {
        if livesRemaining > lives {
            livesRemaining -= lives
            print("Player is alive and has \(livesRemaining) lives remaining")
        } else {
            print("Player is dead")
        }
    }
}

var player1 = Player(name: "Player 1", livesRemaining: 20)
player1.handleAttack(lives: 4)


struct Employee {
    let name: String
    var ressourcesAllocated = 20
    var ressourcesTaken = 0
    
    var ressourcesRemaining: Int {
        get {
            ressourcesAllocated - ressourcesTaken
        }
        
        set {
            ressourcesAllocated = ressourcesTaken + newValue
        }
    }
}

var employee1 = Employee(name: "Name 1")
employee1.ressourcesTaken += 4
employee1.ressourcesRemaining = 5
print(employee1.ressourcesAllocated)


struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score += 4
game.score += 2


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Name 1")
app.contacts.append("Name 2")
app.contacts.append("Name 3")


struct Player2 {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1...80)
    }
}

let player2 = Player2(name: "Name 1")
print(player2.number)
