//
//  Queue.swift
//  SwiftDataStructure
//
//  Created by TaeinKim on 2020/01/25.
//  Copyright © 2020 TaeinKim. All rights reserved.
//

import Foundation

public struct Queue<T> {
    internal var data = Array<T>()
    public init() {}
    
    public mutating func dequeue() -> T? {
        return data.removeFirst()
    }
    
    public func peek() -> T? {
        return data.first
    }
    
    public mutating func enqueue(element: T) {
        data.append(element)
    }
    
    public mutating func clear() {
        data.removeAll()
    }
    
    public var count: Int {
        return data.count
    }
    
    public var capacity: Int {
        get {
            return data.capacity
        }
        set {
            data.reserveCapacity(newValue)
        }
    }
    
    public func isFull() -> Bool {
        return count == data.capacity
    }
    
    public func isEmpty() -> Bool {
        return data.isEmpty
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return "QUEUE : " + data.description
    }
}

extension Queue: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = T
    public init(arrayLiteral elements: T...) {
        for element in elements {
            self.data.append(element)
        }
    }
}

extension Queue: Sequence {
    public func makeIterator() -> QueueIterator<T> {
        return QueueIterator(currentElement: self.data)
    }
}
