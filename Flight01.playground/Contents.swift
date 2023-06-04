import UIKit

var lastScore = 0
lastScore = 4

let stage = "Beginning"

var currentActiveUsers = 7


// array
var ages = [17, 21, 18, 24, 25, 31, 29]

var currentScore: [Int] = []

ages.first
ages[1]
ages.append(22)
//print(ages)
ages.insert(34, at: 0)
//print(ages)
ages.sort()
//print(ages)

// set
var position = [12, 14, 14, 18, 13, 14, 19, 25]

//to make empty set
//var positionSet: Set<Int> = []
var positionSet = Set(position)
//print(positionSet)
positionSet.contains(12)
positionSet.contains(17)
positionSet.insert(17)
positionSet.contains(17)

//dictionary
let devices: [String: String] = [
    "phone": "iPhone 13 Mini",
    "laptop": "2021 Macbook Pro",
    "tablet": "2021 iPad Pro",
    "desktop": "2022 Mac Studio"
]

devices["laptop"]

//function
func printUserName() {
    print("User's Name")
}

printUserName()

func printDeviceName(name: String) {
    print(name)
}

printDeviceName(name: "2019 Mac Pro")

func integralCoef(firstCoef: Int, to firstPower: Int) -> Int {
    let coef = firstCoef * (firstPower + 1)
    return coef
}

integralCoef(firstCoef: 4, to: 3)
//to adalah parameter label, bisa diganti kata lain

//if else
var isDarkModeOn = true

if isDarkModeOn == true {
    print("The background is dark.")
}

var isAccountPrivate = false

if isAccountPrivate {
    print("People who don't follow you will not be able to see your contents.")
} else {
    print("Everyone can see your contents.")
}

var machineScore = 557

if machineScore > 600 {
    print("The model is very accurate.")
} else if machineScore > 500 {
    print("The model is accurate enough.")
} else if machineScore > 350 {
    print("The model is less accurate.")
} else {
    print("The model is not accurate.")
}

// for loops
let tempResult = ["Matrix", "Limit", "Integral", "Probability"]

for material in tempResult {
    print(material)
}

for lesson in tempResult where lesson == "Matrix" {
    print(lesson)
}

var numberList: [Int] = []

for i in 0..<25 {
    numberList.append(i)
}

print(numberList)

var randomInts: [Int] = []

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print(randomInts)

//enum
enum Phone {
    case iPhone14Pro
    case iPhone13Mini
    case iPhone11
    case SonyXperia1
    case Pixel7Pro
}

func getResolution(on phone: Phone) {
    if phone == .iPhone14Pro {
        print("The resolution is 2556 × 1179 pixels.")
    } else if phone == .iPhone13Mini {
        print("The resolution is 2340 × 1080 pixels.")
    } else if phone == .iPhone11 {
        print("The resolution is 1792 × 828 pixels.")
    } else if phone == .SonyXperia1 {
        print("The resolution is 3840 × 1644 pixels.")
    } else if phone == .Pixel7Pro {
        print("The resolution is 3120 × 1440 pixels.")
    }
}

getResolution(on: .iPhone13Mini)

enum Laptop: String {
    case M1ProMacbookPro    = "10-core CPU with 8 performance cores and 2 efficiency cores"
    case M2MacbookAir       = "8-core CPU with 4 performance cores and 4 efficiency cores"
    case ThinkPadX1Carbon   = "Up to 14 cores"
}

func getLaptopCores(on laptop: Laptop) {
    print(laptop.rawValue)
}

getLaptopCores(on: .M1ProMacbookPro)

enum Tablet {
    case M1iPadPro
    case iPadPro
    case RedmiPad
}

func getTabletResolution(on tablet: Tablet) {
    switch tablet {
    case .M1iPadPro:
        print("The resolution is 2048 x 2732 pixels.")
    case .iPadPro:
        print("The resolution is 2388 x 1668 pixels.")
    case .RedmiPad:
        print("The resolution is 1200 x 2000 pixels.")
//    default:
//
    }
}

getTabletResolution(on: .M1iPadPro)


let testScore = 75

func determineGrade(from score: Int) {
    switch score {
    case 0:
        print("Why are you so stupid?")
    case 1..<35:
        print("E")
    case 35..<50:
        print("D")
    case 50..<70:
        print("C")
    case 70..<85:
        print("B")
    case 85...100:
        print("A")
    default:
        print("We don't know where you are.")
    }
}

determineGrade(from: testScore)

//Optional
var studentAges: [Int] = []
studentAges.sort()

// if let
if let oldestAge = studentAges.last {
    print("The oldest age is \(oldestAge)")
} else {
    print("There is no oldest age. You must have no students.")
}

//nil coalescing
//if let oldestAge = studentAges.last ?? 777
//berarti, jika nill, maka default oldestAge = 777

//guard statement
func getOldestAge() {
    guard let oldestAge = studentAges.last else {
        return
    }
    
    print("The oldest age is \(oldestAge)")
}

//force unwrap
//let oldestAge = studentAges.last!

