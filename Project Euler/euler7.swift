//
//  euler7.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

func euler7() {
    print("10001st Prime")
    
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
    
    func primes(_ count : Int){
        var primeList = [Int]()
        for x in 2...1000000000{
            if(isPrime(x)){
                primeList.append(x)
            }
            if primeList.count == count{
                print(primeList.last!)
                break
            }
        }
    }
    primes(10001)
}




