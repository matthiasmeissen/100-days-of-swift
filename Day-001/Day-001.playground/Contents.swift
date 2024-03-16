import Cocoa

var greeting = "Hello, playground"

let name = "Some Name"
let numberCount = name.count
let uppercase = name.uppercased()

let multiLineString = """
This is some
text across multiple lines
"""

print(name)
print(numberCount)
print(multiLineString)

let score = 10
let additionalScore = score * 2

let highNumber = 100_000_000
print(highNumber)

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))
print(140.isMultiple(of: 4))

let number2 = 0.1 + 0.2
print(number2)

let a = 1
let b = 2.0
let c = Double(a) + b

let range = 2.0 * 4.0
print(range)
