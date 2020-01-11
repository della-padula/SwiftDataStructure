//
//  ArrayIterator.swift
//  SwiftDataStructure
//
//  Created by TaeinKim on 2020/01/25.
//  Copyright © 2020 TaeinKim. All rights reserved.
//

import Foundation

public struct ArrayIterator<T>: IteratorProtocol {
 
    var currentElement: [T] // 커서가 한칸씩 움직이는 느낌이랬지? current 가 커서라고 생각하면 되.
    init(elements: [T]) {
        self.currentElement = elements
    }
    
    public mutating func next() -> T? {
        if !self.currentElement.isEmpty { // 비어있지 않으면의 뜻이 nil 이 아니면 이지.
            return self.currentElement.popLast() // 마지막 꺼부터 반환하고 없애는 것. Stack 의 특성대로.
        }
        return nil
    }
}
