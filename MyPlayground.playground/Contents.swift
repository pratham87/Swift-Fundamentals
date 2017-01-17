//: Playground - Swift 3 basics

import UIKit
import Darwin

/************************************* Data types *********************************************/
var str: String = "Hello, playground"

//constants - Immutable objects
let x = 3.1456
print("Constant is:  \(x)")

//println() is deprecated in swift 3


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


/****************************************** Tuples **************************************************/

//Tuples can be used to return multiple data at once from a function
var employee = (id:1, firstName:"John", lastName:"Costa")
print("Employee's first name: \(employee.firstName)")
print("Employee's last name: \(employee.lastName)")


/****************************************** Loops ***************************************************/

//For in - providing a range
for i in 1...5 {
    print(i)
}

print("\nStride function")

//Stride function - Jump the data in a range by a certain value
for i in stride(from: 1, to: 10, by: 2){
    print(i)
}

print("\nUsing for loop on Dictionary")

//Using for loop on Dictionary
let fruits = ["apple":"red", "mango":"yellow"]
for (key, value) in fruits{
    print("\(key) : \(value)")
}

print("\nwhile loop")


//while loop
var i = 1
while i<=5 {
    print(i)
    i+=1
}

print("\nrepeat")

//repeat - do while loop
var j = 0
repeat{
    print(j)
    j+=1
}while j < 6

/****************************************** Functions *************************************************/

print("\nFunctions:")

func sayHello(to name: String){
    print("\nHello \(name)")
}
sayHello(to: "john")

print("\nReturn a value")

//return a value
func test(num: Int)->String{
    print(num)
    return String(num)
}
test(num: 1)

print("")

// Return multiple types from function. Returning a tuple
func getMult(number: Int) -> (x: Int, y: Int){
    let x = number * 2
    let y = number * 3
    
    return (x, y)
}

var answer = getMult(number: 50)

print(answer.x)
print(answer.y)

print("\nINOUT Param:")

//inout parameter
func double(number: inout Int) {
    number = number * 2
}

var n = 10

double(number: &n) // changes 10 to 20

print(n) // 20

/****************************************** Closures *************************************************/
// Anonymous Function. Just like Lambda expressions in Java.
// (arguments) -> (returnValue) = {body}

print("\nClosures: \n\nNo arguments or return value:")

//No arguments or return value
var sayHelloThere: () -> () = {
    print("Hello there")
}

sayHelloThere()

print("\nReturning single data:")

//Returning single data
var cube: (Int) -> (Int) = {
    num in
    return num * num * num
}

print("\(cube(2))")

// An Array has a map method that accepts a closure that performs an action on every item in the array
let numsToSquare = [1,2,3,4,5,6]

//let squareClosure: (Int) -> (String) = {
//    String in
//    "\(num * num)"
//}

let squaredNums = numsToSquare.map {
    (num: Int) -> String in
    "\(num * num)"
}

print("\n\(squaredNums)")

/****************************************** Classes **************************************************/

print("\nClasses:")

class Person {
    var name: String = "No Name"
    var height: Double = 0.0
    var weight: Double = 0.0
    
    //init is the constructor and self is 'this' in Java
    init(name: String, height: Double, weight: Double){
        self.name = name
        self.height = height
        self.weight = weight
   }
    
    func getInfo(){
        print("\(self.name) is \(self.height) ft tall and weighs \(self.weight) lbs")
    }
}

//Create a Person instance
var john = Person(name:"John", height: 5, weight: 60)
john.getInfo()

print("\nInheritance:")

// Inheritance
class Adam: Person{
    
    override func getInfo(){
        print("\nCalling parent class method:")
        super.getInfo()
    }
    
}

var a = Adam(name:"Adam", height: 6, weight: 70)
a.getInfo()








