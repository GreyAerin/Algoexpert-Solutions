class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?
    var parent: BinaryTree?

    init(value: Int) {
        self.value = value
        left = nil
        right = nil
        parent = nil
    }
}

// O(n) time Solution
func findSuccessor(_ tree: BinaryTree, _ node: BinaryTree) -> BinaryTree? {
    func recur(_ node: BinaryTree?, _ arr: inout [BinaryTree]){
        if let curr = node{
            recur(curr.left, &arr)
            arr.append(curr)
            recur(curr.right, &arr)
        }
    }
    var arr = [BinaryTree]()
    recur(tree, &arr)
    var prev: BinaryTree? = nil
    for elem in arr{
        if prev == nil{
            prev = elem
            continue
        }
        if prev!.value == node.value{
            return elem
        }
        prev = elem
    }
    return nil
    
}