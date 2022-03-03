  class Node {
    let name: String
    var children: [Node]

    init(name: String) {
      self.name = name
      children = []
    }

    func addChild(name: String) -> Node {
      let childNode = Node(name: name)
      children.append(childNode)

      return self
    }

    func depthFirstSearch(array: inout [String]) -> [String] {
      array.append(self.name)
      for child in self.children{
          child.depthFirstSearch(array: &array)
      }
      return array
    }
  }