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

var charSeq =  Array("abc".characters)

//permute(aString: &charSeq, size: 3)

var paper_stack: Stack<Int> = [1,2,3,4,5,6]
print(paper_stack)
print(paper_stack.pop()!)
print(paper_stack.count)
print(paper_stack)
for index in 1...5 {
  paper_stack.pop()
}
print(paper_stack)

//
//
//for num in injectArray {
//  bst.insert(key: num)
//}
//
//bst.printTree()
