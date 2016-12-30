//: Playground - Swift 3 basics

import UIKit
import Darwin

/************************************* Data types *********************************************/
var str: String = "Hello, playground"

//constants - Immutable objects
let x = 3.1456
print("Constant is:  \(x)")


/************************************* Casting Objects ****************************************/

//Int to Float and Float to Int
var test1: Int = 15
var test2: Float = 2.0
print("Casting float value: \(Int(test2))")
print("Casting Int value: \(Float(test1))")

//String to Int, float
var age: String = "15"
print("Casting to Int: \(Int(age))")
print("Casting to float: \((age as NSString).floatValue)")


/****************************************** Math ***********************************************/
print(2 + 2)
print(3 % 2)

//++ -- deprecated in swift 3
var num = 1
print(num + 1)

//Random number generator. Generates random number between 0 - 19
print("Random number is: \(arc4random() % 20)")

/*********************************** Conditional Statements *************************************/

let studentAge: Int = 19

//if else
if studentAge < 18  {
    print("Under age")
}else if(studentAge > 18 && studentAge < 21){
    print("Valid age but can't work")
}

// ? - Ternary operator
var legalAge: Bool = studentAge > 21 ? true: false
print(legalAge)


//Switch statement
let color: String = "blue"

switch color {
case "red":
    print("RED")
default:
    print("No color selected")
}

//Giving a range using ...
let score: Int = 90

switch score {
case 50...70:
    print("Good Score")
case 70...95:
    print("Great Score")
default:
    print("No score available")
}

/****************************************** Arrays **********************************************/

//Create array: Way 1
var employees: Array<String> = ["John", "Bob", "Adam"]
print(employees[0])

//Create array: Way 2
var colors = [String]()
colors.append("red")
colors.append("blue")
colors.append("green")
print(colors)

//Insert at Index
colors.insert("violet", at: 1)
print(colors)

//2D array
var array: [[Int]] = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
for row in array{
    print("\(row)")
}

/**************************************** Dictionaries *********************************************/

//Create Dictionary: key:value
var dict = [String:String]()

dict["apple"] = "red"
dict["banana"] = "yellow"
dict["strawberry"] = "red"

print(dict)













