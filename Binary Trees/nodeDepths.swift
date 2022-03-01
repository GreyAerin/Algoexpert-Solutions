  class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?

    init(value: Int) {
      self.value = value
    }
  }

  func nodeDepths(_ root: BinaryTree?) -> Int {
    func dfs(_ curr: BinaryTree?, _ depth: Int, _ sum: inout Int){
      if let node = curr{
        sum += depth
        dfs(node.left, depth + 1, &sum)
        dfs(node.right, depth + 1, &sum)
      }
    }
    var sum = 0
    dfs(root, 0, &sum)
    return sum
  }