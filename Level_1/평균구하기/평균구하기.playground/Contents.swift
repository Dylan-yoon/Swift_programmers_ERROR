func solution(_ arr:[Int]) -> Double {
    return Double((arr.reduce(0){$0 + $1})) / Double(arr.count)
}

solution([1,2,3,4])
solution([5,5])

