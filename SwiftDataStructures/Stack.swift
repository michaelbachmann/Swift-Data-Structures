//
//  Stack.swift
//  SwiftDataStructures
//
//  Created by John Michael Bachmann on 10/4/16.
//  Copyright © 2016 Michael Bachmann. All rights reserved.
//

import Foundation

public struct Stack<T> {
  fileprivate var data = [T]()
  
  init() {}
  
  public mutating func push(value: T) {
    data.append(value)
  }
  
  public mutating func pop() -> T? {
    return data.removeLast()
  }
  
  public var count : Int {
    return data.count
  }

  public var top: T? {
    return data.last
  }
  
  public var isEmpty : Bool {
    return data.isEmpty
  }
}

// MARK: Sequence Protocol Conformance
extension Stack : Sequence {
  public func makeIterator() -> AnyIterator<T> {
      return AnyIterator(data.reversed().makeIterator())
    }
}

// MARK: CustomStringConvertible Protocol Conformance
extension Stack : CustomStringConvertible {
  public var description : String {
    return "[" + map{"\($0)"}.joined(separator: " -> ") + "]"
  }
}

// MARK: ArrayLiteralConvertible Protocol Conformance
extension Stack : ExpressibleByArrayLiteral {
  public init(arrayLiteral: T...) {
    self.init()
    for element in arrayLiteral {
      self.data.append(element)
    }
  }
}
