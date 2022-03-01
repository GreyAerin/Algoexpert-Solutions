func sortedSquaredArray(_ array: [Int]) -> [Int] {
    var sortedArr: [Int] = []
    for num in array{
        sortedArr.append(num * num)
    }
  return sortedArr.sorted()
}