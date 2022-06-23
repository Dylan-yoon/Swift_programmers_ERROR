import Foundation

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    let removeOverlab = Array(Set(report))    //report 중복 배열 삭제
//    var componentsReport = [[String]]()
    var componentsReport = [[String]](repeating: [], count: removeOverlab.count)
    
    for i in 0...(removeOverlab.count - 1) {
        componentsReport[i] = removeOverlab[i].components(separatedBy: " ")
    }
//    for i in removeOverlab {
//        componentsReport[countOverlab] = i.components(separatedBy: " ")
//        countOverlab += 1
//    }
    
    
    // (id list (나), 내가신고한 사람, 나를 신고한사람) ===== finalList
    var finalList = [(String, [String], [String])]()
    var countOverlab = 0
    for i in id_list {
        finalList[countOverlab] = (i, [], [])
        countOverlab += 1
    }
    
    for i in componentsReport {
        for j in 0...(id_list.count - 1) {
            if finalList[j].0 == i[0] {
                finalList[j].1.append(i[1])
            }
            if finalList[j].0 == i[1] {
                finalList[j].2.append(i[0])
            }
        }
    }
    
    var result = [Int](repeating: 0, count: finalList.count)
    var badPeople = [String]()
    countOverlab = 0
    for i in finalList {
        if i.2.count >= k {
            badPeople.append(i.0)
        }
        countOverlab += 1
    }
    
    
    for i in badPeople {
        countOverlab = 0
        
        for j in finalList {
            if j.1.contains(i) {
                result[countOverlab] += 1
            }
        }
    }
    
    return result
}


/*
 생각해본 로직
 
 - report속 중복 원소 제거
 - report
 - report속 파싱 하여 신고 횟수 저장 -> noticeCount
 -
 */

solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2)

print("끝")
//
//let a = ["12 345", "16 666", "52 234"]
//var bb = [[Any]]()
//var cc = [[String]]()
//for i in a {
//    var aa = i.components(separatedBy: " ")
//    bb.append(aa)
//    cc.append(aa)
//    print(aa)
//}
//print(bb)
//
//let aaaa = [("1", [1,2,3]), ("2", [2,3,4])]
//print(aaaa[1].1)
//
//print(cc[1][1])
