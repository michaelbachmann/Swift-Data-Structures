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
  // To Fix
  public func makeIterator() -> AnyIterator<T> {
    return AnyIterator(IndexingIterator(_elements: data))
  }
}
