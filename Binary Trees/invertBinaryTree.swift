class BinaryTree {
  var value: Int?
  var left: BinaryTree?
  var right: BinaryTree?
}
  
  func invertBinaryTree(tree: BinaryTree?) {
    var newTree = tree
    func recur(_ node: inout BinaryTree?){
      if let curr = node{
        let temp = curr.left
        curr.left = curr.right
        curr.right = temp
        recur(&curr.left)
        recur(&curr.right)
      }
    }
    recur(&newTree)
  }