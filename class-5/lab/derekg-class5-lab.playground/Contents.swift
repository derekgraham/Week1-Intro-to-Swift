//: Playground - noun: a place where people can play

import UIKit

// ==========================================================
// PROBLEM 1: return array of palindromes from array of words
// ==========================================================

func returnPalindromes( input: [String]) -> [String]
{
    return input.filter { String(($0.characters).reverse()).lowercaseString == $0.lowercaseString }
}

let testArray = ["Mom", "dad", "dada", "two", "three", "racecar", "test"]
returnPalindromes(testArray)


// ==========================================================
// PROBLEM 2: Convert base10 integer to base16
// ==========================================================

func toBase16(input: Int) -> String
{
    let hexDigits = ["0","1","2","3","4","5","6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]
    var outString : String = ""
    var convert = input
    while convert > 15
    {
        outString = hexDigits[ convert % 16 ] + outString
        convert = convert / 16
    }
    outString = hexDigits[convert] + outString
    return "0x\(outString)"
}

toBase16(75327)
toBase16(0)

toBase16(10)
toBase16(16)

// ==========================================================
// PROBLEM 3: Convert roman number string to decimal integer
// ==========================================================

// Trial 1 - working but ugly and hard to follow
func romanToDecimal (input: String) -> Int
{
    var result : Int = 0
    let convert : [Character : Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000 ]
    
    var index = 0
    func getValueAtIndex(index: Int) -> Int
    {
        let myout = input[input.startIndex.advancedBy(index)]
        return convert[myout]!
    }
   
    while index + 1 < input.characters.count && input.characters.count > 1
    {
        if getValueAtIndex(index) >= getValueAtIndex(index + 1){
            result += getValueAtIndex(index)
            index += 1
            if index + 1 == input.characters.count {
            return result + getValueAtIndex(index)
            }

        } else {
            result += getValueAtIndex(index + 1) - getValueAtIndex(index)
            if index + 2 == input.characters.count {
                return result
            }
            index += 2
            
        }
        
    }
    
    return result + getValueAtIndex(index)
}

romanToDecimal("MCMXLVII")
romanToDecimal("I")
romanToDecimal("IV")
romanToDecimal("LX")
romanToDecimal("XXIX")

// Trial 2 - Working version using recursion
func romanToDecimal2( input: String ) -> Int
{
    var result : Int = 0
    let convert : [Character : Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000 ]
    var inputArray = Array(input.characters)
    if inputArray.count > 1
    {
      if convert[inputArray[0]] < convert[inputArray[1]]
      {
        result = result + convert[inputArray[1]]! - convert[inputArray[0]]! + romanToDecimal2( input.substringFromIndex(input.startIndex.advancedBy(2)))
      } else {
        result = result + convert[inputArray[0]]! + romanToDecimal2( input.substringFromIndex(input.startIndex.successor()))

        }
    } else if input.characters.count == 1
    {
        result = result + convert[Array(input.characters)[0]]!
    }
    
    return result
}


// Version 3 - simplified version using recursion.
func romanToDecimal3( input: String ) -> Int
{
    var result : Int = 0
    let convert : [Character : Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000 ]
    var inputArray = Array(input.characters)
    if inputArray.count > 1
    {
        if convert[inputArray[0]] < convert[inputArray[1]]
        {
            result -= convert[inputArray[0]]!
        } else {
            result += convert[inputArray[0]]!
        }
        result = result + romanToDecimal3( input.substringFromIndex(input.startIndex.successor()))

    } else if input.characters.count == 1
    {
        result = result + convert[Array(input.characters)[0]]!
    }
    
    return result
}


romanToDecimal3("XIX")
romanToDecimal3("MCMXLVII")
romanToDecimal3("I")
romanToDecimal3("XIIII")
romanToDecimal3("III")
romanToDecimal3("IV")

// Version 4 - DRYing it out a bit more
func romanToDecimal4( input: String ) -> Int
{
    var result : Int = 0
    let convert : [Character : Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000 ]
    var inputArray = Array(input.characters)
    if inputArray.count > 1
    {
        result += (convert[inputArray[0]]! < convert[inputArray[1]]! ? -(convert[inputArray[0]])! : convert[inputArray[0]]! )
 
        result += romanToDecimal4( input.substringFromIndex(input.startIndex.successor()))
        
    } else if input.characters.count == 1
    {
        result += convert[Array(input.characters)[0]]!
    }
    
    return result
}

romanToDecimal4("XIX")
romanToDecimal4("MCMXLVII")
romanToDecimal4("I")
romanToDecimal4("XIIII")
romanToDecimal4("III")
romanToDecimal4("IV")