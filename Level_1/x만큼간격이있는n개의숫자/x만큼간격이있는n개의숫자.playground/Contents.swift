func solution(_ x:Int, _ n:Int) -> [Int64] {
    var solve = [Int64]()
    
    for i in 1...n {
        solve.append(Int64(x)*Int64(i))
    }
    
    return solve
}

//어떤 의미로 출제한건지 모르겠다...int64에 훼이크가 있나 했는데,, int 64에 대해 다시한번 생각해봐야겠다
