//
//  euler10.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

func euler10() {
    print("Sum of all Primes")
    
    func isPrime(_ num:Int)-> Bool{
        var bool : Bool = true
        for i in 2 ..< num{
            if (num % i) == 0{
                bool = false;
                break
            }
        }
        return bool
    }
    
    func sumOfAllPrimesBelow(_ limit: Int){
        var sum = 0
        for value in 2...limit{
            if isPrime(value){
                sum += value
            }
        }
        print(sum)
    }
    
    

    sumOfAllPrimesBelow(2000000)
    
    
}

