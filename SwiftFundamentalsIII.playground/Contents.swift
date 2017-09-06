//: Playground - noun: a place where people can play

import UIKit

// Write a program that adds the numbers 1-255 to an array

var arr = [Int]()
for i in 1...255 {
    arr.append(i)
}
print(arr)

// Swap two random values in the array 
// Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
// Remove the value "42" from the array and Print

func swapRandom(arr: inout [Int]) -> [Int] {
    for i in 1..<101 {
        let rand1 = Int(arc4random_uniform(UInt32(arr.count)))
        let rand2 = Int(arc4random_uniform(UInt32(arr.count)))
        let temp = arr[rand1]
        arr[rand1] = arr[rand2]
        arr[rand2] = temp
        
//        arr.remove(at: popped)
    }
    print(arr)
    var popped = Int()
    for j in 0..<arr.count {
        if arr[j] == 42 {
            popped = j
            print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(popped)")
        }
    }
    arr.remove(at: popped)
    print(arr)
    return arr
}
swapRandom(arr: &arr)


