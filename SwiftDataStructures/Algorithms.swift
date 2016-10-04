//
//  Algorithms.swift
//  SwiftDataStructures
//
//  Created by John Michael Bachmann on 10/3/16.
//  Copyright © 2016 Michael Bachmann. All rights reserved.
//

import Foundation

// Heap Algorithm for Permutations
func permute(aString: inout [Character], size: Int) {
  if size == 1 {
    print(aString)
    return
  }
  
  for i in 0..<size {
    permute(aString: &aString, size: size-1)
    
    if (size%2 == 1) { // don't swap with self
      if (size-1) != 0 {  // if odd swap first and last
        swap(&aString[0], &aString[size-1])
      }
    }
    
    if (size-1) != i { // don't swap with self
      if (size%2 == 0) {  // if even swap ith and last
        swap(&aString[i], &aString[size-1])
      }
    }
  }
}
