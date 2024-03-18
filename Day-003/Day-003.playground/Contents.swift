import Cocoa

var greeting = "Hello, playground"

var numbers = [2, 4, 8, 12, 16, 20]
print(numbers[2])
numbers.append(24)

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores)

var albums = [String]()
albums.append("Album 1")
albums.append("Album 2")
albums.append("Album 3")
print(albums.count)

var characters = ["Actor 1", "Actor 2", "Actor 3", "Actor 4"]
characters.remove(at: 2)

let movies = ["Movie 1", "Movie 2", "Movie 3"]
print(movies.contains("Album 1"))

let cities = ["London", "Tokyo", "Rome", "Paris"]
print(cities.sorted())

let artist = [
    "name": "Taylor",
    "type": "Singer",
    "location": "London"
]

print(artist["name", default: "unknown"])

var heights = [String: Int]()
heights["Player 1"] = 200
heights["Player 2"] = 320
heights["Player 3"] = 280
print(heights)

var actors = Set(["Actor 1", "Actor 2", "Actor 3"])
print(actors)
actors.insert("Actor 4")
print(actors)

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
