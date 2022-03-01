  func isMonotonic(array: [Int]) -> Bool {
    var increasing: Bool = true
    var decreasing: Bool = true
    let min = array.count >= 1 ? 1 : 0
    for i in min..<array.count{
        if array[i] < array[i-1]{
            increasing = false
            break
        }
    }
    for i in min..<array.count{
        if array[i] > array[i-1]{
            decreasing = false
            break
        }
    }
    return increasing || decreasing
  }