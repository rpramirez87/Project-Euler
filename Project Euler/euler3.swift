//
//  euler3.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

func euler3() {
    print("Largest Prime Factor")
    func isPrime2(_ num:Int)-> Bool{
        var bool : Bool = true
        for x in 2...num{
            if(x != num) && (num % x) == 0{
                bool = false
            }
        }
        return bool
    }
    
    func isAPrime(_ num:Int)-> Bool{
        var bool : Bool = true
        for i in 2 ..< num{
            if (num % i) == 0{
                bool = false;
                break
            }
        }
        return bool
    }
    
    func largestPrime(_ num : Int) -> Int{
        var max : Int = 0
        for x in (2...num){
            //Factors
            if(num % x) == 0{
                //Check if number is prime
                if(isAPrime(x)){
                    //print(x)
                    max = x
                }
            }
        }
        return max
    }

    print(largestPrime(13195))
    print(largestPrime(600_851_475_143))

}



