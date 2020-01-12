//
//  QueueIterator.swift
//  SwiftDataStructure
//
//  Created by TaeinKim on 2020/01/25.
//  Copyright © 2020 TaeinKim. All rights reserved.
//

import Foundation

public struct QueueIterator<T>: IteratorProtocol {
    var currentElement: [T]
    
    public mutating func next() -> T? {
        if !self.currentElement.isEmpty {
            return currentElement.removeFirst()
        }else {
            return nil
        }
    }
}
