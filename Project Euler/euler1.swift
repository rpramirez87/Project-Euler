//
//  euler1.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

func euler1() {
    print("Hello from Euler 1")
    
    func sumOfMultiplesOf3and5(){
        var sum : Int = 0
        for x in (1...999){
            if (x % 3) == 0 || (x % 5) == 0 {
                sum += x
            }
        }
        print(sum)
    }

    sumOfMultiplesOf3and5()
}



