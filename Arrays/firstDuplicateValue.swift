func firstDuplicateValue(_ array: inout [Int]) -> Int {
    var nums: Set<Int> = []
    for i in array{
        if nums.contains(i){
            return i
        }else{
            nums.insert(i)
        }
    }
    return -1
}