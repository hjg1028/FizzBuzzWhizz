//: Playground - noun: a place where people can play

import UIKit

var x: Int = 3
var y: Int = 6
var z: Int = 8
var line: [String] = []

for n in 1...100 {
    
    //判断是否为x, y, z的整数倍
    
    var a = String()
    var b = String(n)
    
    if n % x == 0 || n % y == 0 || n % z == 0 {
        
        if n % x == 0 {
            a = a + "fizz"
        }
        if n % y == 0 {
            a = a + "buzz"
        }
        if n % z == 0 {
            a = a + "whizz"
        }
        
        line.append(a)
        
    } else {
        
        line.append(b)
        
    }
    
    //判断是否包含x
    
    for m in b.characters.indices {
        if b[m] == Character(String(x)) {
            line[n-1] = "fizz"
            break
        }
    }
}

print(line)

