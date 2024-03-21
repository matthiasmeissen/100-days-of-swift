import Cocoa

var greeting = "Hello, playground"


let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

for i in 1...12 {
    print("There are \(i) numbers")
}

var num = [String]()
for _ in 1...8 {
    num.append("X")
}
print(num)

var countdown = 10
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Done")

let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...1)

let filenames = ["image1.jpg", "image2.txt", "image3.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found image: \(filename)")
}

let number1 = 4
let number2 = 18
var multiples = [Int]()

for i in 1...100_100 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
