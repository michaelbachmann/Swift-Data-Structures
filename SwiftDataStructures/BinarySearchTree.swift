//
//  BinarySearchTree.swift
//  SwiftDataStructures
//
//  Created by John Michael Bachmann on 9/24/16.
//  Copyright © 2016 Michael Bachmann. All rights reserved.
//

import Foundation

class BSTNode<T: Comparable> {
  var key: T
  var left: BSTNode?
  var right: BSTNode?
  var parent: BSTNode?
  
  public init(key: T) {
    self.key = key
  }
}

class BinarySearchTree<T: Comparable>{
  var _root: BSTNode<T>?
  var _numNodes = 0
  
  func find(key: T) -> BSTNode<T>? {
    if _numNodes == 0 {
      return nil
    }
    return nil
  }
  
  func findHelper(key: T, root: BSTNode<T>?) -> BSTNode<T>? {
    if key == root?.key {
      return root
    }
    
    return nil
  }
  
  
  func insert(key: T) {
    if _root != nil {
      insert(key: key, root: self._root!)
    } else {
      _root = BSTNode(key: key)
    }
    _numNodes += 1
  }
  
  private func insert(key: T, root: BSTNode<T>?)  {
    if key < (root?.key)! {
      if let left = root?.left {
        insert(key: key, root: left)
      } else {
        root?.left = BSTNode(key: key)
        root?.left!.parent = root
      }
    } else if key > (root?.key)! {
      if let right = root?.right {
        insert(key: key, root: right)
      } else {
        root?.right = BSTNode(key: key)
        root?.right!.parent = root
      }
    }
  }
  
  func printTree() {
    printHelper(root: _root)
  }
  
  private func printHelper(root: BSTNode<T>?) {
    if let left = root?.left {
      printHelper(root: left)
    }
    print("\(root?.key) ")
    if let right = root?.right {
      printHelper(root: right)
    }
  }
}
