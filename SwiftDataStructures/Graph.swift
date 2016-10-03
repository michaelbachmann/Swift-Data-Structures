import Foundation


// Adjacency list style graph

class Graph {
  var _vertices: Int
  var _adjacencyList = [[Int]]()
  
  init(vertices: Int) {
    _vertices = vertices
    for _ in 0..<vertices {
      _adjacencyList.append([Int]())
    }
  }
  
  func addEdge(vertex: Int, edge: Int) {
    _adjacencyList[vertex].append(edge)
  }
  
  func BFS(start: Int) {
    var temp = start
    
    // Mark all nodes as not visited
    var visited = [Bool](repeating:false, count:_adjacencyList.count)
    
    // Queue
    var queue = Queue<Int>()
    
    // Mark current node and set to visited
    visited[start] = true
    queue.append(newElement: start)
    
    // Get all adjacent vertices of a vertex
    
    while !queue.empty() {
      temp = queue.dequeue()!
      print("\(temp) ", terminator: "")
    
      for vertex in _adjacencyList[temp] {
        if !visited[vertex] {
          visited[vertex] = true
          queue.append(newElement: vertex)
        }
      }
    }
  }
}
