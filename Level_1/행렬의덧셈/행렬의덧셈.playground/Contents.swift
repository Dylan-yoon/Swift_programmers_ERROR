func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    let rowCount = arr1.count //행의 개수
    let columnCount = arr1[0].count //열의 개수
    let someAr = [Int](repeating: 0, count: columnCount) //열의 빈배열 생성
    var results = [[Int]](repeating: someAr, count: rowCount) //열의 개수를 포함한 행의 빈배열 생성

    for i in 0...rowCount - 1 { //배열 치환
        for j in 0...columnCount - 1 {
            results[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return results
}
solution([[1, 2], [2, 3], [5,6]],[[3, 4], [5, 6], [9,10]])
solution([[1],[2]], [[3],[4]] )
