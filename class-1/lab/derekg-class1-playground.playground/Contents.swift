//: Playground - noun: a place where people can play

import UIKit


// Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number

func numify (string: String) -> Float?
{
      return Float(string) != nil ? Float(string) : nil

}

// tests
numify("1")
numify("1.1")
numify("1,000")
numify("mom")


// Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func tupelo ( params: (code: Int, message: String) ) -> String {
    return("ERROR \(params.code): \(params.message)")
}

let myTuple = (code: 0, message: "Fatal Error")

tupelo(myTuple)


//Write a function that take in a string, and returns a message: “String contains n characters”
func stringCounterThatMeetsRequirement (string: String) -> String {
    return("String contains n characters")
}

stringCounterThatMeetsRequirement("How many characters?")

//Write a function that take in a string, and returns a message: “String contains n characters”

func stringCounter (string: String) -> String {
  
    
    return("String contains \(string.characters.count) characters")
}

stringCounter("How many characters?")

//Write a function that takes in a string and reverses it. Use a simple for loop
func reverse (string: String )-> String {
    var returnString = "";
    for index in 1...string.characters.count
    
    {
        returnString.append(string[string.startIndex.advancedBy(string.characters.count - index)])
    }
return returnString
}

reverse("Madam Im Adam")
reverse("mom")
reverse("A man a plan a canal panama")


//Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.
var greeting = { (name: String) -> String in
    return("Hello, \(name). Do you want to play a game?")
}

greeting("derek")

