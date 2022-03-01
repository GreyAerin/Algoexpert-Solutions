  func arrayOfProducts(_ array: [Int]) -> [Int] {
    var products: [Int] = [Int](repeating: 1, count: array.count)
    var leftProd: Int = 1
    var rightProd: Int = 1

    for i in 0..<array.count{
        products[i] = leftProd
        leftProd *= array[i]
    }
    for i in stride(from: array.count - 1, through: 0, by: -1){
        products[i] *= rightProd 
        rightProd *= array[i]
    }
    return products
  }