func factorization(_ num: Int) -> [Int] {
    var resultNum = num
    var startNumber = 2
    var saveFactorizationNumber = [Int]()

    loop : while true {
        for divideNumber in startNumber...resultNum {
            if divideNumber == resultNum { //나눌 수와 결과 값이 같다면 더이상 나누어지지않으므로 루프를 깬다
                saveFactorizationNumber.append(divideNumber)
                break loop
            } else if resultNum % divideNumber == 0 { //약분이 된다면? for루프를 깨고 다시시작
                saveFactorizationNumber.append(divideNumber)
                resultNum = resultNum / divideNumber
                if startNumber != divideNumber { //굳이? 그냥 startNumber의 값을 같더라도 divdeNumber로 하면되는거아닌가?
//                    startNumber == divideNumber //이게 왜 작동되는건데?;;
                    startNumber = divideNumber
                    print(startNumber)
                }
                break
            }
        }
    }
    return saveFactorizationNumber
}


func solution(_ n:Int, _ m:Int) -> [Int] {
    let nFactorization = factorization(n)
    let mFactorization = factorization(m)
    
    var nDivisor = [1]
    var mDivisor = mFactorization
    var commonDivisor = [1]
    
    for nn in nFactorization {
        for mIndex in 0...mDivisor.count - 1 {
            if nn == mDivisor[mIndex] { //같을 때
                commonDivisor.append(nn)
                mDivisor.remove(at: mIndex)
                break
            }
            if mIndex == mDivisor.count - 1 {
                nDivisor.append(nn)
            }
        }
    }
    mDivisor.insert(1, at: 0)
    
    let big = commonDivisor.reduce(1) { $0 * $1 }
    let small = big * (nDivisor.reduce(1) { $0 * $1 }) * (mDivisor.reduce(1) { $0 * $1 })
    
    return [big ,small]
}
solution(3, 12)
solution(2, 5)
/*
 logic?
 소인수 분해? -> while for 고민


 각각의 약수를 구하기
 n m 각각의 약수에대해 공약수 비교 -> 최대 공약수 index[0] 에 저장
 "                         -> w
 */



/*
 차라리 약수끼리 2 부터 같은로직 적용해서 최대 공약수의 소인수 따로
 n 만의 약수 따로
 m 만의 약수 따로
 저장하는 방법은 어떤가?
 
 */
