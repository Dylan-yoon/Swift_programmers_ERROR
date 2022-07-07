func solution(_ num:Int) -> Int {
    var count = 0
    var inputNumber = num
    
    if inputNumber == 1 {
        return count
    }
    
    while inputNumber != 1 {
        if inputNumber % 2 == 0 {
            inputNumber = inputNumber/2
        } else {
            inputNumber = inputNumber * 3 + 1
        }
        count += 1
        if count == 500 {
            return -1
        }
    }
    return count
}


solution(6)
solution(16)
solution(626331)
