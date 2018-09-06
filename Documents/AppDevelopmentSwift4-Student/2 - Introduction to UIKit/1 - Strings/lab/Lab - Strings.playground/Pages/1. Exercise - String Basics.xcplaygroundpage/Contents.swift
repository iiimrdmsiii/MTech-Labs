/*:
 ## Exercise - String Basics
 
 Create a `name` constant and assign it a string literal representing your name.
 */

let hey = "Hi this is Dallin S."
    print(hey)


/*:
 Create a `favoriteQuote` constant and assign it the following string literal:
 
 - "My favorite quote is <INSERT QUOTE HERE>."
 
 Write in your own favorite quote where indicated, and be sure to include escaped quotation marks. Print the value of `favoriteQuote`
 */
let intro = "My favorite quote is"
let favoriteQuote = "Get busy living or get busy dying. By: Mark Caine"

print("\(intro) + \(favoriteQuote)")

/*:
 Write an if-else statement that prints "There's nothing here" if `emptyString` is empty, and "It's not as empty as I thought" otherwise.
 */
let emptyString = ""

if emptyString.isEmpty {
    print("Please add the string")
}

//: page 1 of 5  |  [Next: Exercise - Concatenation and Interpolation](@next)
