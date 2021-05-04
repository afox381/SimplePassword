# SimplePassword

Create a function SimplePassword(str) that takes a str parameter being passed in and determines if it passes as a valid password following the list of constraints below:

 1. It must have a capital letter.
 2. It must contain at least one number.
 3. It must contain a punctuation mark or mathematical symbol.
 4. It cannot have the word "password" in the string.
 5. It must be longer than 7 characters and shorter than 31 characters.

 If all the above constraints are met within the string, the program should return the string "true", otherwise the program should return the string "false". 
 
 For example: if str is "apple!M7" then the program should return "true".
 
 Examples:

 Input: "passWord123!!!!"
 Output: false
 Input: "turkey90AAA="
 Output: true
