import Cocoa

var greeting = "Hello, playground"


struct PlayerPoints {
    var points = 0
    mutating func deposit(amount: Int) {
        points += amount
    }
    mutating func withdraw(amount: Int) -> Bool {
        if points > amount {
            points -= amount
            return true
        } else {
            return false
        }
    }
}

var points = PlayerPoints()
points.deposit(amount: 100)
let success = points.withdraw(amount: 200)
if success {
    print("Withdrew points sucessfully")
} else {
    print("Not able to get points")
}
points.points = 400


struct PlayerPoints1 {
    private var points = 0
    mutating func deposit(amount: Int) {
        points += amount
    }
    mutating func withdraw(amount: Int) -> Bool {
        if points > amount {
            points -= amount
            return true
        } else {
            return false
        }
    }
}

var points1 = PlayerPoints1()
points1.deposit(amount: 100)
let success1 = points.withdraw(amount: 200)
if success1 {
    print("Withdrew points sucessfully")
} else {
    print("Not able to get points")
}


struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Student Name")
print(School.studentCount)


struct AppData {
    static let name = "App Name"
    static let saveFiles = "settings.json"
    static let id = "12345"
}

AppData.name


struct Employee {
    let username: String
    let role: String
    
    static let example = Employee(username: "Name 1", role: "Role 1")
}

Employee.example


struct Car {
    let model: String
    let numberOfSeats: Int
    var currentGear = 4
    
    mutating func changeGearUp() {
        if currentGear < 10 {
            currentGear += 1
            print("You are now in gear \(currentGear)")
        } else {
            print("Can't go higher than 10")
        }
    }
    
    mutating func changeGearDown() {
        if currentGear > 0 {
            currentGear -= 1
            print("You are now in gear \(currentGear)")
        } else {
            print("Can't go lower than 1")
        }
    }
}

var car = Car(model: "Model 1", numberOfSeats: 4)
car.changeGearUp()
