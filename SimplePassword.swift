import UIKit

/*
 Medium test
 
 Simple Password

 Have the function SimplePassword(str) take the str parameter being passed and determine if it passes as a valid password that follows the list of constraints:

 1. It must have a capital letter.
 2. It must contain at least one number.
 3. It must contain a punctuation mark or mathematical symbol.
 4. It cannot have the word "password" in the string.
 5. It must be longer than 7 characters and shorter than 31 characters.

 If all the above constraints are met within the string, the your program should return the string true, otherwise your program should return the string false. For example: if str is "apple!M7" then your program should return "true".
 Examples

 Input: "passWord123!!!!"
 Output: false
 Input: "turkey90AAA="
 Output: true
 */

func SimplePassword(_ str: String) -> String {
    let isValidPassword =
        str.containsAtLeastOneNumber &&
        str.containsAtLeastOneCapitalLetter &&
        str.containsAtLeastOnePunctuationOrMathsCharacter &&
        !str.lowercased().contains("password") &&
        str.count > 7 &&
        str.count < 31
    
    return isValidPassword ? "true" : "false"
}

extension String {
    var containsAtLeastOneCapitalLetter: Bool {
        let characterSet = NSCharacterSet.uppercaseLetters
        let filteredCharacters = filter { String($0).rangeOfCharacter(from: characterSet) != nil }
        return !filteredCharacters.isEmpty
    }
    
    var containsAtLeastOneNumber: Bool {
        let characterSet = NSCharacterSet.decimalDigits
        let filteredCharacters = filter { String($0).rangeOfCharacter(from: characterSet) != nil }
        return !filteredCharacters.isEmpty
    }
    
    var containsAtLeastOnePunctuationOrMathsCharacter: Bool {
        let characterSet = NSCharacterSet.symbols.union(.punctuationCharacters)
        let filteredCharacters = filter { String($0).rangeOfCharacter(from: characterSet) != nil }
        return !filteredCharacters.isEmpty
    }
}

// keep this function call here
//print("+".containsPunctuationOrMaths)
SimplePassword("pW123aa!")
SimplePassword("turkey90AAA=")
SimplePassword("turkey90=")
SimplePassword("turkey=A")

