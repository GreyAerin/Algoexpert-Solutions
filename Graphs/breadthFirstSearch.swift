  class Node {
    var name: String
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

    func breadthFirstSearch(array: inout [String]) -> [String] {
        var queue: [Node] = [self]
        while queue.count > 0{
            var curr = queue.remove(at: 0)
            array.append(curr.name)
            for child in curr.children{
                queue.append(child)
            }
        }
        return array
    }
  }