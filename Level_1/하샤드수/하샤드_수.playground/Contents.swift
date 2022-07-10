import Foundation

func solution(_ x:Int) -> Bool {
    var remainder = 0
    let num = x
    
    func tens() {
        remainder = (num % ((num % 10) + (num - (num % 10))/10))
    }
    
    if x < 10 {
        return true
    } else if x >= 10, x < 100 {
        tens()
        if remainder != 0 {
            return false
        }
    }
    return true
}

solution(10)
solution(11)
solution(12)
solution(13)

solution(54)


//이렇게 할 수도 있지만 다르게 해보기위해 다시생성
