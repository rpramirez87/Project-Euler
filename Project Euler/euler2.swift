//
//  euler2.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation
var fibonacciSum : Int = 0

func euler2() {
    print("Hello from Euler 2")
    print("Even Fibonacci Numbers")
    
    func fibonacciNumbers(num0 : Int, num1 : Int){
        let sum = num0 + num1
        
        if(sum <= 4_000_000){
            //print(sum)
            fibonacciNumbers(num0: num1, num1:sum)
        }
        if(sum % 2 == 0){
            //print("EVEN SUM = \(sum)")
            fibonacciSum += sum
        }
    }
    
    fibonacciNumbers(num0: 0, num1: 1)
    print(fibonacciSum)
}




