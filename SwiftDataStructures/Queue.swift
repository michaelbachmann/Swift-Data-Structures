//
//  Queue.swift
//  SwiftDataStructures
//
//  Created by John Michael Bachmann on 10/2/16.
//  Copyright © 2016 Michael Bachmann. All rights reserved.
//

import Foundation

// MARK: Class Definitions
private final class QueueNode<T> {
  var _value: T
  var _next: QueueNode<T>? = nil
  
  init(value: T) {
    _value = value
  }
}

public final class Queue<T> {
  fileprivate var _head: QueueNode<T>? = nil
  fileprivate var _tail: QueueNode<T>? = nil
  
  public init () { }
}

// MARK: Member Functions
extension Queue {
  public func append(newElement: T) {
    let oldTail = _tail
    _tail = QueueNode(value: newElement)
    if _head == nil {
      _head = _tail
    } else {
      oldTail?._next = _tail
    }
  }
  
  public func dequeue() -> T? {
    if let head = _head {
      _head = head._next
      if head._next == nil {
        _tail = nil
      }
      return head._value
    } else {
      return nil
    }
  }
  
  public func empty() -> Bool {
    if _head == nil {
      return true
    } else {
      return false
    }
  }
  
  public func front() -> T? {
      return _head?._value
  }
}

// MARK: Sequence Protocol Conformance
//extension Queue : Sequence {
//  public func makeIterator() -> AnyIterator<T> {
//    return AnyIterator(data.reversed().makeIterator())
//  }
//}

// MARK: CustomStringConvertible Protocol Conformance
//extension Queue : CustomStringConvertible {
//  public var description : String {
//    return "[" + map{"\($0)"}.joined(separator: " -> ") + "]"
//  }
//}

// MARK: ArrayLiteralConvertible Protocol Conformance
extension Queue : ExpressibleByArrayLiteral {
  public convenience init(arrayLiteral: T...) {
    self.init()
    for element in arrayLiteral {
      self.append(newElement: element)
    }
  }
}
