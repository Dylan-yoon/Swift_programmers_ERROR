import Foundation

func solution(_ x:Int) -> Bool {
    var remainderSum = 0
    let count = String(x).count
    
    if count == 1 {
        remainderSum += x
    } else if count == 2 {
        remainderSum += x % 10
        remainderSum += x/10 % 10
    } else if count == 3 {
        remainderSum += x % 10 // 321 m 1
        remainderSum += x/10 % 10 // 32
        remainderSum += x/100 % 10
    } else if count == 4 {
        remainderSum += x % 10
        remainderSum += x/10 % 10
        remainderSum += x/100 % 100
        remainderSum += x/1000 % 1000
    }

    if x % remainderSum != 0 {
        return false
    }
    return true
}

solution(10)
solution(11)
solution(12)
solution(13)

