func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int]{
    let sorted = array.sorted()
    var (left, right) = (0, sorted.count-1)
    var currSum: Int
    while left < right{
        currSum = sorted[left] + sorted[right]
        if currSum == targetSum{
            return [sorted[left], sorted[right]]
        }
        else if currSum > targetSum{
            right -= 1
        }
        else if currSum < targetSum{
            left += 1
        }
    }
    return []
}