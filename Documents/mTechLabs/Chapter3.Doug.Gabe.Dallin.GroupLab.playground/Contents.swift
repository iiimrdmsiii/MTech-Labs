
/*Create a lab with your group that:
 - covers material from the last week;
 - has an answer key as well as a "test" version;
 - must have at least 10 or more questions
 - have fun with it
 */

import UIKit

// OPTIONALS : Read each questions and print or // comment below.

// What does the "?" mean and do?

// Whats the code to force unwrap?

// where in the code do you unwrap? and whats the name of the code?

let optionals = "3.1 Optionals"

print("\(optionals) is ?: a value either contains a value or contains nil to indicate that the value is missing")

// Example of Optional Chainning or binding, force-unwrap and optional

class Car {
    var make: String
    var model: Model?
    
    
    init(make: String, model: Model?) {
        self.make = make
        self.model = model
    }
}

class Model {
    var modelType: String
    var year: Year?
    
    init(modelType: String, year: Year?) {
        self.modelType = modelType
        self.year = year
    }
}

class Year {
    var mileage: Int
    var costOfCar: String?
    var manufacturedYear: Int
    
    init(mileage: Int, costOfCar: String?, manufacturedYear: Int) {
        self.mileage = mileage
        self.costOfCar = costOfCar
        self.manufacturedYear = manufacturedYear
    }
}

let typeYear = Year(mileage: 37, costOfCar: "399,201", manufacturedYear: 2019)

let typeModel = Model(modelType: "4Runner", year: typeYear)

let typeCar = Car(make: "Toyota", model: typeModel)



if let bestCar = typeCar.model {
    print("Your imaginary car is Make: \(bestCar.modelType), Model: \(typeCar.make), Year: \(typeYear.manufacturedYear), Mileage: \(typeYear.mileage). It will cost \(String(describing: typeYear.costOfCar!)) dollars to get the car.")
} else {
    print("Do you even want a car?")
}


///////////////////////////////////////////////////////////////////////////////////////

// GUARD: Read each questions and print or // comment below.

// Why cant I use my if and else statement instead of guard?

// What does "guard let" do?

// Why you need "return nil" instead of just "return"?


let `guard` = "3.3 Guard"

print("\(`guard`) statement is simple and powerful. It checks for some condition and if it evaluates to be false, then the else statement executes which normally will exit a method. A guard let statement is another way of writing an if let statement written in a different way. You use a guard statement to require that a condition must be true in order for the code after the guard statement to be executed. Unlike an if statement, a guard statement always has an else clause—the code inside the else clause is executed if the condition is not true.")

// SITE; https://medium.com/@abhimuralidharan/if-let-if-var-guard-let-and-defer-statements-in-swift-4f87fe857eb6

// Example of guard

struct Person {
    let firstName: String
    let lastName: String
    var age: String
    var address: String
    let yearYouWereBorn: String
}

let firstNameTextField = UITextView()
let lastNameTextField = UITextView()
let ageTextField = UITextView()
let addressTextField = UITextView()
let yearYouWereBornTextField = UITextView()

firstNameTextField.text = "Bill"
lastNameTextField.text = "Schue"
ageTextField.text = "39"
addressTextField.text = "1827 Provo Dr. Provo UT 39281"
yearYouWereBornTextField.text = "1923"


func createPerson() -> Person? {
    guard let unwrapFirstName = firstNameTextField.text, let unwrapLastName = lastNameTextField.text, let unwrapAge = ageTextField.text, let unwrapAddress = addressTextField.text, let unwrapYearYouWereBorn = yearYouWereBornTextField.text else {return nil}
    
    return Person(firstName: unwrapFirstName, lastName: unwrapLastName, age: unwrapAge, address: unwrapAddress, yearYouWereBorn: unwrapYearYouWereBorn)
}

createPerson()

// Another Example

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!")
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."




