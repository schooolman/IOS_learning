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
let nameByParkingSpace = [13: "alice", 27: "Bob"]

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


















