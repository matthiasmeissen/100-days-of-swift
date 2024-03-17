import Cocoa

var greeting = "Hello, playground"

let goodDog = true
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated

var isActive = false
isActive.toggle()

print(isActive)

let firstPart = "This is "
let secondPart = "the dogs"
let text = firstPart + secondPart

let name = "Some Name"
let age = 26
let message = "Hey, I am \(name) and I am \(age) years old."
print(message)

let number = 12
let missingMessage = "Spaceship number " + String(number) + " has landed on the planet."

let temperatureInCelsius = 20.0
let temperatureInFahrenheit = (temperatureInCelsius * 9.0) / 5.0 + 32.0
print("The Value \(temperatureInCelsius) degree Celsius is \(temperatureInFahrenheit) degree in Fahrenheit to compare.")
