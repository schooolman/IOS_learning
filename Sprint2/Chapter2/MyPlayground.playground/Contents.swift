//: Playground - noun: a place where people can play

var chapterTwo = true

//Starting chapter 2 of the Big Nerd Ranch guide to iOS development, using this doc to take notes and work.

//types in Swift
//Properties: values associated with a type
//initializers: code that initializes an instance of a type
//instance methods: functions specific to a type that can be called on an instance of that type
//class or static methods: functions specific to a type that can be called on the type itself

//var str = "Hello, Swift"

//let is used for constants. variables that you don't intend to change

//let constStr = str

//type inference is means the compiler is inferring the type of the variable based on it's initial value
//using option click will reveal QuickHelp to give you a further look into what is going on in the code behind the scenes


//Specify the type in the declaration if you want to make sure it is set to a certain type or it doesn't have an initial value
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

//var arrayOfInts: Array<Int>
var arrayOfInts: [Int]


//Dictionaries are keys and values as an unordered collection. Values can be of any type, but they must be unique
//var dictionaryOfCapitalsByCountry: Dictionary<String,String>
var dictionaryOfCapitalsByCountry: [String:String]


//Sets are similar to arrays but are unordered. Members must be unique as well as hashable. 

var winningLotteryNumbers: Set<Int>

//Standard types can be assigned literal values, or literals.

var str = "Hello, Playground"

str = "hello, swift"

let constStr = str

//let number = 42
let fmStation = 91.1

//Arrays and dictionaries can be assigned literal values as well. Syntax resembles shorthand syntax for specifying these types

let countinUp = ["one", "two"]
//let nameByParkingSpace = [13: "alice", 27: "Bob"]

//let countingUp =  ["one", "two"]
//let secondElement = countingUp[1]

//secondElement

//Standard types have initializers that return empty literals when no arguments are supplied
let eptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()

//Other types have default values
let defaultNumber = Int()
let defaultBool = Bool()

//some can have multiple initializers, like String has an initializer that accepts an Int and creates a string based on that value
let number = 42
//This will turn the integer into a string
let meaningOfLife = String(number)

//Float has several initializers. 
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)

//Floating point literal will defaul to Double.
let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

//Properties
//A property is a value associated with an instance of a type.

//let countingUp = ["one", "two"]
//let secondElement = countingUp[1]
countinUp.count

let emptyString = ""
emptyString.isEmpty

//Instance Methods
//An instance method is a function that is specific to a particular type and can be called on an instance of that type.

var countingUp = ["one", "two"]
let secondElement = countingUp[1]
countingUp.count

countingUp.append("three")

//Optionals
//Swift types can be optional, which is indicated by appending ? to a type name

var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?

var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.3
reading2 = 3.3
//reading3 = 2.2

//unwrapping the optional
//Forced unwrapping of an optional

//This below results in an error because the optionals declared above need to be unwrapped.
//let avgReading = (reading1 + reading2 + reading3) / 3
//By using an ! to forcible unwrap an optional you are telling the compiler that it will no longer be an optional, so it cannot default back to nil
//let avgReading = (reading1! + reading2! + reading3!) / 3

//Below is a safer way to unwrap an optional called optional binding
//To do this you use an if-let statement. 
//This assings a temporary constant, if it has a value than it is valid, if the optional is nil the you handle that case with an else clause. See below example.

if let r1 = reading1,
    r2 = reading2,
    r3 = reading3 {
    let avgReading2 = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading that was nil."
}

//Subscripting dictionaries
//The result of subscripting a dictionary is an optional

let nameByParkingSpace = [13: "Alice", 27: "Bob"]
//let space13Assignee: String? = nameByParkingSpace[13]
let space42Assignee: String? = nameByParkingSpace[42]

//If the key is not in the dictionary the result will then be nil. It is common to use if-let with subscripting dictionary

if let space13Assignee = nameByParkingSpace[13] {
    print("Key 13 is assigned in the dictionary!")
}

//Loops and String Interpolation

//The enumerate() function returns a sequence of tuples. A tuple is an ordered grouping of values similar to an array, except each member may have a distinct type.

// This is Swift's string interpolation. Any expression that is enclosed within \( and ) are evaluated and inserted into the string at runtime.
// vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
for (space, name) in nameByParkingSpace {
    let permit = "space \(space): \(name)"
}


//Enumerations and the Switch Statement
//An enumeration is a type with a discret set of values.

enum PieType {
    case Apple
    case Cherry
    case Pecan
}

let favoritePie = PieType.Pecan

//Switch has a powerful switch statement that, among other things, is great for matching on enum values:

let name: String
switch favoritePie {
case .Apple:
    name = "apple"
case .Cherry:
    name = "cherry"
case .Pecan:
    name = "Pecan"
}

//The cases for a switch statement must be exhaustive, each possible value of the switch expression must be accounted for.

//Swtich statements can match on many types, even ranges:

let osxVersion: Int = 8
switch osxVersion{
case 0...8:
    print("A big cat")
case 9:
    print("ughe dumb!!")
case 10:
    print("winner")
default:
    print("greetings, updated your fucking os")
}

//Enumerations and raw values
//Swift enums can have raw values associated with their cases:

enum PieType2: Int {
    case Apple = 0
    case Cherry
    case Pecan
}

let pieRawValue = PieType2.Pecan.rawValue
//pieRawValue is an Int with a value of 2

if let pieType2 = PieType2(rawValue: pieRawValue) {
//    got a valid 'PieType'!
}







