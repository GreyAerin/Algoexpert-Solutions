func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool{
    var idx = 0
    for i in 0..<array.count{
        if array[i] == sequence[idx]{
            idx += 1
        }
        if idx == sequence.count{
            return true
        }
    }
    return false
}
