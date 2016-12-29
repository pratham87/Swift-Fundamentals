//: Playground - noun: a place where people can play

//Data types
import UIKit
import Darwin

/************************************* Data types ********************************************/
var str: String = "Hello, playground"

//constants - Immutable objects
let x = 3.1456
print("Constant is:  \(x)")


/************************************* Casting Objects ****************************************/
var test1: Int = 15
var test2: Float = 2.0
print("Casting float value: \(Int(test2))")
print("Casting Int value: \(Float(test1))")

//String to Int, float
var age: String = "15"
print("Casting to Int: \(Int(age))")
print("Casting to float: \((age as NSString).floatValue)")
