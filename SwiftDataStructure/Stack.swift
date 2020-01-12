//
//  Stack.swift
//  SwiftDataStructure
//
//  Created by TaeinKim on 2020/01/25.
//  Copyright © 2020 TaeinKim. All rights reserved.
//

import Foundation

public struct Stack<T> {
    private var elements = Array<T>()
    public init() {}
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(element: T) {
        self.elements.append(element)
    }
    
    public func peek() -> T? {
        return self.elements.last
    }
    
    public var isEmpty: Bool {
        return self.elements.isEmpty
    }
    
    public var count: Int {
        return self.elements.count
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return "STACK : " + self.elements.description
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        self.init()
        for element in elements {
            self.elements.append(element)
        }
    }
}
 
extension Stack: Sequence {
    public func makeIterator() -> ArrayIterator<T> {
        return ArrayIterator<T>(elements: self.elements)
    }
}
