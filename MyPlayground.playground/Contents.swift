//: Playground - noun: a place where people can play

import UIKit

//var str = "check this shit out!!"
6+3
77*2

var newVariable = "store strings here, easy math and output on side. CRAZY!"

var str: String = "This is setting a variable"

var age: Int = 29

var luckyNumber: Int = 9

//Double is a decimal integer
var costOfABeer: Double = 3.99

var Amazing: Bool = true

//var name: String = "Jake"

//name = "Jacob"

var favoriteVideoGame = "Uncharted"

//Rather than declaring them with var, you can use the keyword let. What this does, is it makes the immutable, or unchangeable. 

//Whenever possible, you should use let rather than var because it allows your code to run faster because the compiler doesn’t have to account for the possibility that the value may be changed. Any data type can be used as a constant, just as any data type can be used as a variable.

let name: String = "Jake"
let favNumber: Int = 9

let batmanCoolness = 10
var supermanCoolness = 9
var aquamanCoolness = 1
var spidermanCoolness = 7


//Comparison operators are very similar to Javascript
batmanCoolness < aquamanCoolness
supermanCoolness >= 8
batmanCoolness > supermanCoolness && batmanCoolness == (aquamanCoolness + supermanCoolness)


//if else statements are very similar to Javascript as well
if (batmanCoolness > spidermanCoolness) {
    spidermanCoolness = spidermanCoolness - 1
} else if (batmanCoolness >= spidermanCoolness) {
    spidermanCoolness = spidermanCoolness - 1
} else {
    spidermanCoolness = spidermanCoolness + 1
}

print("Pretty excited to start learning this xcode stuffs")

var apples = 5

print("Sally has \(apples - 3) apples")

var secondsLeft = 3
while (secondsLeft > 0) {
    print(secondsLeft)
    secondsLeft = secondsLeft - 1
}
print("blast off")


var burritos = 0
while (burritos <= 4){
    print("Jake has eaten \(burritos) burritos ")
    burritos = burritos + 1
}
print("barf!")

var cokesLeft = 7
var fantasLeft = 4
while(cokesLeft > 0)  {
    print("You have \(cokesLeft) Cokes left.")
    cokesLeft = cokesLeft - 1
    if(cokesLeft <= fantasLeft)  {
        break
    }
}
print("You stop drinking Cokes.")


//Continue will send the loop back to the top and execute the code. You can see that it skips printing the number 9 in the console.
var numbers = 0
while(numbers <= 10)  {
    if(numbers == 9)  {
        numbers = numbers + 1
        continue
    }
    print(numbers)
    numbers = numbers + 1
}
