//
//  euler7.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

func euler6() {
    print("Sum Square Difference")
    
    func sumOfSquare(_ max : Int) -> Int{
        var sum = 0
        var square = 0
        for x in 1...max{
            square = x * x
            sum += square
        }
        return sum
    }
    
    func squareOfSums(_ max : Int) -> Int{
        var sum = 0
        for x in 1...max{
            sum += x
        }
        return sum * sum
    }
    
    func sumSquareDifference(_ num : Int) -> Int{
        return squareOfSums(num) - sumOfSquare(num)
    }

    
    print(sumSquareDifference(10))
    print(sumSquareDifference(100))
}






