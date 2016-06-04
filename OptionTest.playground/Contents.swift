//: Playground - noun: a place where people can play

import UIKit

var lotteryWinning: Int?
//lotteryWinning = 500


if lotteryWinning != nil {
    print(lotteryWinning!)
}

if let winnings = lotteryWinning {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?

print(vehicle?.model)

vehicle = Car()
vehicle?.model = "Audi"

if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()

if let carArr = cars where carArr.count > 0{
    
} else {
    cars?.append(Car())
    print(cars?.count)
}