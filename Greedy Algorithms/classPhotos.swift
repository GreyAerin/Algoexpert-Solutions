  func classPhotos(_ redShirtHeights: inout [Int], _ blueShirtHeights: inout [Int]) -> Bool {
    redShirtHeights.sort()
    blueShirtHeights.sort()
    var flagRed: Bool = redShirtHeights[0] > blueShirtHeights[0] ? true : false
		var flagBlue: Bool = redShirtHeights[0] < blueShirtHeights[0] ? true : false
    for i in 1..<redShirtHeights.count{
        if flagRed{
            if redShirtHeights[i] <= blueShirtHeights[i]{
                return false
            }
        }
				if flagBlue{
            if blueShirtHeights[i] <= redShirtHeights[i]{
                return false
            }
        }
    }
    return flagRed || flagBlue
  }