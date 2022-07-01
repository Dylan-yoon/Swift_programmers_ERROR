func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }

    var sames = [0]
    var compares = 0

    for i in 1...arr.count - 1 {
        if arr[compares] == arr[i] {
            sames.append(i)
        } else if arr[compares] > arr[i] {
            compares = i
            sames = [i]
        }
    }
    
    /*
     첫 풀이.. 하지만 remove가 앞에서부터 삭제 하므로 다른 배열이 나온다..
    var results = arr
     for i in sames {
         results.remove(at: i)
     }
     
     
     하지만 reversed 로 배열을 뒤집어 해결
    */
    
    var results = arr
    sames.reversed()
    for i in sames {
        results.remove(at: i)
    }

    return results
}

solution([4,3,2,1])

