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

let number = 42
let fmStation = 91.1

//Arrays and dictionaries can be assigned literal values as well. Syntax resembles shorthand syntax for specifying these types

let countinUp = ["one", "two"]
let nameByParkingSpace = [13: "alice", 27: "Bob"]

let countingUp =  ["one", "two"]
let secondElement = countingUp[1]

secondElement



