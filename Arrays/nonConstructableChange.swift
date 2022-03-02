func nonConstructableChange(_ coins: [Int]){
    var change = 0
    for coin in coins.sorted(){
        if coin > change + 1{
            return change+1
        }
        change += coin
    }
    return change + 1
}