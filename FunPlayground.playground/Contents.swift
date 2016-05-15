//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

// new loop syntax

for x in 0..<50 {
    print(x)
}


// big number
var bigNumber = 999999999999999
print(bigNumber + 1)


// pass param
var amount = 10

func testCount(var amount: Double) {
    amount = 11
}

testCount(Double(amount))
print(amount)

// func define

func add(firstNum: Double, secondNum: Double) -> Double {
    return firstNum + secondNum
}

func sub(firstNum: Double, secondNum: Double) -> Double {
    return firstNum - secondNum
}

func multi(firstNum: Double, secondNum: Double) -> Double {
    return firstNum * secondNum
}

func div(firstNum: Double, secondNum: Double) -> Double {
    return firstNum / secondNum
}

div(100.0, secondNum: 2.0)
