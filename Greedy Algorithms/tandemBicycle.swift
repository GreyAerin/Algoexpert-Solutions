  func tandemBicycle(_ redShirtSpeeds: inout [Int], _ blueShirtSpeeds: inout [Int], _ fastest: Bool) -> Int {
    redShirtSpeeds.sort()
    blueShirtSpeeds.sort()
    var speed = 0
    if fastest{
        blueShirtSpeeds.reverse()
    }
    for (i, j) in zip(redShirtSpeeds, blueShirtSpeeds){
        speed += max(i,j)
    }
    return speed
  }