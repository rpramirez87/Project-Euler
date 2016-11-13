//
//  euler9.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

func euler9() {
    print("Special Pythagorean Triplet")
    print(200 * 375 * 425)
    
    
    func specialTriplet(_ num : Int){
        var tripList = [Int]()
        var product = 0
        for x in 1 ..< num{
            product = x * x
            tripList.append(product)
            print(x ,x * x)
        }
        print(tripList)
        var sum = 0
        var squareA, squareB, squareC : Int
        for a in 0 ..< tripList.count{
            for b in 0 ..< tripList.count{
                for c in 0 ..< tripList.count{
                    //sum = a + b + c
                    if (tripList[a] < tripList[b]){
                        if (tripList[a] + tripList[b]) == tripList[c]{
                            squareA = Int(sqrt(Double(tripList[a])))
                            squareB = Int(sqrt(Double(tripList[b])))
                            squareC = Int(sqrt(Double(tripList[c])))
                            
                            sum = squareA + squareB + squareC
                            
                            if sum == 1000{
                                print("Hit")
                                print("\(tripList[a]) + \(tripList[b]) = \(tripList[c])")
                                print("\(squareA) + \(squareB) + \(squareC) = 1000")
                                print(squareA * squareB * squareC)
                                break
                            }
                        }
                    }
                }
            }
        }
    }
    

    specialTriplet(1000)
}

