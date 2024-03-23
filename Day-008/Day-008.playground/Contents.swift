import Cocoa

var greeting = "Hello, playground"

func makeNumbers(num: Int, max: Int = 12) {
    for i in 1...max {
        print("This is \(i) times \(num)")
    }
}

makeNumbers(num: 8, max: 20)
makeNumbers(num: 5)


enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("Please use another password.")
} catch {
    print("There was an error: \(error.localizedDescription)")
}


enum SquareErrors: Error {
    case outOfBounds, notSquare
}

func getSquare(_ num: Int) throws -> Int {
    if num < 1 || num > 10_000 {throw SquareErrors.outOfBounds}
    for i in 1...200 {
        if (i * i) == num {
            return i
        }
    }
    throw SquareErrors.notSquare
}

let number = 400

do {
    let num = try getSquare(number)
    print(num)
} catch SquareErrors.outOfBounds {
    print("Your number must be between 1 and 10000")
} catch SquareErrors.notSquare {
    print("Your number is not square.")
} catch {
    print("There was an error.")
}
