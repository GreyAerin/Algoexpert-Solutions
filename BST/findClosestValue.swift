  class BST {
    var value: Int
    var left: BST?
    var right: BST?

    init(value: Int) {
      self.value = value
      left = nil
      right = nil
    }
  }

  func findClosestValueInBST(tree: BST?, target: Int) -> Int {
    var search_tree = tree
    var cDiff: Int = Int.max
    var c: Int = Int.max
    while search_tree != nil && target != search_tree!.value{
      if target < search_tree!.value{
        if cDiff > abs(target - search_tree!.value){
          c = search_tree!.value
          cDiff = abs(target - search_tree!.value)
        }
        search_tree = search_tree!.left
        
      }else{
        if cDiff > abs(target - search_tree!.value){
          c = search_tree!.value
          cDiff = abs(target - search_tree!.value)
        }
        search_tree = search_tree!.right
      }
    }
    if search_tree == nil{
      return c
    }else{
      return search_tree!.value
    }
  }