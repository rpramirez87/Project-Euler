//
//  euler16.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/13/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

func euler16() {
    print("Project Euler 16")
    
    func arrayMultiply(_ numArray : [Int])-> [Int]{
        var productArray = [Int]()
        var remainder = 0
        var numToMultiply = 0
        var singleDigit = 0
        var numString = ""
        
        var y = numArray.count - 1
        while y >= 0 {
            numToMultiply = (numArray[y] * 2)
            numString = (String(numToMultiply))
            singleDigit = Int(String((numString.characters.last!)))!
            //print(singleDigit)
            productArray.insert((singleDigit + remainder), at: 0)
            if numToMultiply > 9{
                remainder = 1
            }else{
                remainder = 0
            }
            y -= 1
        }
        
        if(remainder == 1){
            productArray.insert(remainder, at: 0)
        }
        return productArray
    }
    
    func power(_ number : Int) -> Int{
        var intArray = [Int]()
        intArray.append(2)
        var sum = 0
        for _ in 1 ..< number{
            //print("Loop",x)
            intArray = arrayMultiply(intArray)
            //print(intArray)
        }
        for x in intArray{
            print(x,terminator:"")
            sum += x
        }
        print("\n")
        print("The size of the number is \(intArray.count)")
        return sum
    }
    
    //print(INT64_MAX)
    //print(Int.max)
    print(power(1000))
    
}

