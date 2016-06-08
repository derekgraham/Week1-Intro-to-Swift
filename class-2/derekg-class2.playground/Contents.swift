//: Playground - noun: a place where people can play

import UIKit

//Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

var testArrayWith = ["Sun", "Mercury","Venus","Earth", "Mars"]

var testArrayWithout = ["Sun", "Mercury","Venus", "Mars"]
func addEarth (inout array: [String])
{
    if !array.contains("Earth") {
        array.append("Earth")
    }
}

addEarth(&testArrayWith)
addEarth(&testArrayWithout)

//Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”
testArrayWith.reduce("") { (result, planet) -> String in
    
    return (result == "" ? planet : "\(result), \(planet)")
    
}

//Declare and implement a dictionary that can contain as values Strings, Ints, etc
var myDictionary: [Int: String] = [1: "one", 2: "two", 3: "three"]
myDictionary[2]


//Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter
var myDictionary2: [Int: String] = myDictionary
func searchString(findString: String) -> Bool {
    let results = myDictionary2.filter { (test: (Int, String)) -> Bool in
        return test.1 == findString
    }
    
    return results.count > 0
}
searchString("Test")
searchString("two")


//Write examples for union, intersect, subtract, exclusive Or set operations
let jenny: Set = [8,6,7,5,3,0,9]
let myCell: Set = [3,2,1,0,8,2,8]

let myUnion = jenny.union(myCell)
let myIntersection = jenny.intersect(myCell)

let mySubtract = jenny.subtract(myCell)

let myExclusiveOr = jenny.exclusiveOr(myCell)



//Write a function that counts repeating words and prints out the count of each
let testArray: [String] = ["one", "two", "two", "zebra", "four", "three", "one", "zebra","one", "four", "five","two", "six", "two", "zebra"]

func countRepeatingWords ( input: [String]){
    var results = input.sort()
    var index = 0
    var count = 1
//    print("count \(results.count)")
    while index < results.count - 1 {
//        print(index)
        if results[index] == results[index + 1] {
//            print("match at \(index) ")
            count += 1
            index += 1
            if index == results.count - 1 { print("Duplicate word: \(results[index]) count: \(count)"); break }

        } else {
            if count > 1 {
                print("Duplicate word: \(results[index]) count: \(count) ")
                count = 1
                index += 1
            } else {
                if results.count - index > 2 {
                    index += 1
                } else { break }
            }
        }

    }
}

// No duplicates
countRepeatingWords(["one", "two", "zebra", "four", "three", "five", "six"])

// one at end
countRepeatingWords(["one", "two", "two", "zebra", "four", "three", "three", "five", "six"])
// two at end
countRepeatingWords(["one", "two", "two", "zebra", "zebra", "four", "three", "three", "five", "six"])

// three at end
countRepeatingWords(["one", "two", "two", "zebra", "zebra", "four", "four", "three", "three", "three", "five", "six"])

// four at end
countRepeatingWords(["one", "two", "zebra", "two", "zebra", "zebra", "four", "zebra", "three", "five", "six"])


// one at start
// two at start
// three at start
// four at start

countRepeatingWords(testArray)

//Add two numbers without using “+”

func addTwoNumbersWithoutPlusOperator (num1: Int, num2: Int) -> Int {
    var result: Int = 0

  if num1 >= num2 {
        result = num1
        for _ in 0..<num2 {
            result += 1
        }
    } else {
        
        result = num2
        for _ in 0..<num1 {
            
            result += 1
        }
    }
    return result;
}

addTwoNumbersWithoutPlusOperator(27, num2: 17)
