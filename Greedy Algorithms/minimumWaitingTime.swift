func minimumWaitingTime(_ queries: inout [Int]) -> Int{
    var prev_sum: Int = 0
    var wait_time: Int = 0
    queries.sort()
    for i in 1..<queries.count{
        prev_sum += queries[i-1]
        wait_time += prev_sum
    }
    return wait_time
}