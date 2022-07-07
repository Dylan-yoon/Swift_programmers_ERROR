func solution(_ num:Int) -> String {
    if num % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}

solution(3)


//3항연산자
func solution2(_ num: Int) -> String {
    return num%2 == 0 ? "Even" : "Odd"
}

solution2(3)
