  class BST {
      var value: Int
      var left: BST?
      var right: BST?

      init(value: Int) {
        self.value = value
      }
  }
  
  func branchSums(root: BST) -> [Int] {
    func dfs(_ curr: BST?,  _ sum: Int, _ arr: inout [Int]){
      if let node = curr{
        let newSum = sum + node.value
        if node.left == nil && node.right == nil{
          arr.append(newSum)
        }
        dfs(node.left, newSum, &arr)
        dfs(node.right, newSum, &arr)
      }
    }
    var arr: [Int] = []
    dfs(root, 0, &arr)
    return arr
  }