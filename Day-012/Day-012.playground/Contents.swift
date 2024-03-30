import Cocoa

var greeting = "Hello, playground"


class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func summary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I am writing code for \(hours) hours.")
    }
    
    override func summary() {
        print("I am a developer and I sometimes work \(hours) hours a day.")
    }
}

final class Manager: Employee {
    func work() {
        print("I am going to meetings for \(hours) hours.")
    }
}

let employee1 = Developer(hours: 8)
let employee2 = Manager(hours: 10)
employee1.work()
employee2.work()

let employee3 = Developer(hours: 8)
employee3.summary()


class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let car1 = Car(isElectric: true, isConvertible: false)


class User {
    var username = "Some Name"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Another Name"

print(user1.username)
print(user2.username)

var user3 = User()
var user4 = user3.copy()
user4.username = "Another Name"

print(user3.username)
print(user4.username)


class Player {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Player \(id): I am alive.")
    }
    
    deinit {
        print("Player \(id): I am dead.")
    }
}

for i in 1...3 {
    let player = Player(id: i)
    print("Player \(player.id): I am in control.")
}


class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    let dogSound: String
    
    init(legs: Int, dogSound: String) {
        self.dogSound = dogSound
        super.init(legs: legs)
    }
    
    func speak() {
        print("I do make \(dogSound)")
    }
}

class Corgi: Dog {
    override func speak() {
        print("I make Corgi things and \(dogSound)")
    }
}

class Poodle: Dog {
    override func speak() {
        print("I make poodle things and \(dogSound)")
    }
}

let corgi = Corgi(legs: 4, dogSound: "Bark")
corgi.speak()

let poodle = Poodle(legs: 4, dogSound: "Bark Bark")
poodle.speak()
