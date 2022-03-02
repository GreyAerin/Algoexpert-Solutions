  func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
      array.sort()
      var tripleArr = [[Int]]()
      for i in 0..<(array.count-1){
          var left = i+1
          var right = array.count - 1
          while left < right{
              let currSum = array[i] + array[left] + array[right]
              if currSum == targetSum{
                  tripleArr.append([array[i], array[left], array[right]])
                  left += 1
                  right -= 1
              }else if currSum < targetSum{
                  left += 1
              }else{
                  right -= 1
              }
          }
      }
      return tripleArr
  }