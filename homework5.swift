//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//1
var sum1 = 0
var row = 0
var column = 0
for row in 0...7 {
    for column in 0...7 {
        sum1 += row * column
    }
}
print(sum1)

//2
var sum2 = 0
for row in 0...7 where row % 2 != 0 {
    for column in 0...7 {
        sum2 += row * column
    }
}
print(sum2)

//3
var sum3 = 0
for row in 0...7 {
    for column in 0...7 where column < row {
        sum3 += row * column
    }
}
print(sum3)

//4
var sum4 = 0
func aMathFunc(start:Int, parameter:Int, end:Int) -> Int {
    for i in start...end {
        if i % parameter == 0 {
            sum4 += i
        }
    }
    return sum4
}
aMathFunc(start: 3, parameter: 5, end: 98)

//5
var sum5 = 0
func otherMathFunction(start:Int, parameter:Int, end:Int) -> Int {
    for i in start...end where i % parameter != 0 {
        sum5 += i
    }
    return sum5
}
otherMathFunction(start: 3, parameter: 5, end: 11)

//6
var sum6 = 0
func sameAs2 (row:Int, column:Int) -> Int {
    
    for r in 0...row {
        for c in 0...column where c%2 != 0 {
            sum6 += r*c
        }
    }
    return sum6
}
sameAs2(row: 7, column: 7)

//7
var sum7 = 0
func sameAs3 (row:Int, column:Int) -> Int {
    for r in 0...row  {
        for c in 0...column where c < r {
            sum7 += r*c
        }
    }
    return sum7
}
sameAs3(row: 7, column: 7)

//8
var celsius = 0.0
func temperatureExchange(fahrenheit:Double) -> Double {
    celsius = (fahrenheit - 32)*5/9
    return celsius
}
temperatureExchange(fahrenheit: 90)

//9

var oddArray = [Int]()
var evenArray = [Int]()

func sep( array: [Int]) -> ([Int], [Int]) {
    var array = array
    for o in array {
        if o%2 == 0 {
            array = oddArray
        } else {
            array = evenArray
        }
    }
    return (oddArray, evenArray)
}
sep(array: [1,2,3,4,5,6,7,8,9,10])
