  func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
      arrayOne.sort()
      arrayTwo.sort()
      var p1 = 0
      var p2 = 0
      var sol: [Int] = []
      var diff = Int.max
      var curr = Int.max
      while p1 < arrayOne.count && p2 < arrayTwo.count{
          let x = arrayOne[p1]
          let y = arrayTwo[p2]

          if x < y{
              curr = y - x
              p1 += 1
          }else if y < x{
              curr = x - y
              p2 += 1
          }else{
              return [x,y]
          }
          if diff > curr{
              diff = curr
              sol = [x,y]
          }
      }
      return sol
  }