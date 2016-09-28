//
//  main.swift
//  SwiftDataStructures
//
//  Created by John Michael Bachmann on 9/24/16.
//  Copyright © 2016 Michael Bachmann. All rights reserved.
//

import Foundation

print("Hello, World!")

var bst = BinarySearchTree<Int>()
var injectArray = [5, 6, 7, 4, 1, 10]


for num in injectArray {
  bst.insert(key: num)
}

bst.printTree()

