//
//  main.swift
//  Project Euler
//
//  Created by Ron Ramirez on 11/6/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import Foundation

print("Project Euler")
// euler1()
// euler2()
// euler3() // Need optimization - too slow
// euler4()
// euler5() // 0.000266969203948975 s
// euler6()
// euler7()
// euler8()
// euler9()
// euler10() // Need optimization - too slow
// euler11()
// euler12()
// euler13()
// euler14()
// euler15()
// euler16()
// euler17()
// euler18()
// euler19()
// euler20()




func printTimeElapsedWhenRunningCode(_ title:String, operation:()->()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed for \(title): \(timeElapsed) s")
}


printTimeElapsedWhenRunningCode("Least Common Multiple", operation: euler16)

