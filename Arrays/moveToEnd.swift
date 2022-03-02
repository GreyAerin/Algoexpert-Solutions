  func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
      var l = 0
      var r = array.count - 1
      while l < r {
          while array[r] == toMove && r > l{
              r -= 1
          }
          while array[l] != toMove && r > l{
              l += 1
          }
          array.swapAt(l, r)
      }
      return array
  }