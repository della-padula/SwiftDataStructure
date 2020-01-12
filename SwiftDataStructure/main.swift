//
//  main.swift
//  SwiftDataStructure
//
//  Created by TaeinKim on 2020/01/25.
//  Copyright © 2020 TaeinKim. All rights reserved.
//

import Foundation

var myStack = Stack<Int>()
var myQueue = Queue<Int>()

for i in 1...5 {
    myStack.push(element: i)
    myQueue.enqueue(element: i)
}

print(myStack)
print(myQueue)
