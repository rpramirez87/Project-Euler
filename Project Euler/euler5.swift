//
//  euler5.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

func euler5() {
    print("Smallest Multiple")
    
    // Find the greatest common denominator between two numbers
    func greatestCommonDenominator(_ a: Int, b: Int) -> Int {
        return b == 0 ? a : greatestCommonDenominator(b, b: a % b)
    }
    
    //Find the least common multiple between two numberes
    
    func leastCommonMultiple(_ a: Int, b: Int) -> Int {
        return a * (b / greatestCommonDenominator(a, b: b))
    }
    
    func leastCommonMultiple(_ input: [Int]) -> Int {
        var result: Int = input[0]
        for value in input {
            result = leastCommonMultiple(result, b: value)
        }
        return result
    }
    
    var firstTenInts = [Int]()
    for x in 1...10 {
        firstTenInts.append(x)
    }
    
    print(firstTenInts)
    let firstTwentyInts: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    
    let practiceAnswer = leastCommonMultiple( firstTenInts)
    print(practiceAnswer)
    
    let finalAnswer: Int = leastCommonMultiple(firstTwentyInts)
    print("\(finalAnswer)")
    
    print(greatestCommonDenominator(12, b: 20))
}




