  // I am not a big fan of this question, as it forces you to index F0 as 1
  func getNthFib(n: Int) -> Int {
      if n <= 2{
          return n-1
      }
      return getNthFib(n: n-1) + getNthFib(n: n-2)
  }