import Foundation

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    
    let nameCounts = id_list.count
    
    let removeOverlab = Array(Set(report))
    
    var componentsReport = [[String]](repeating: [], count: removeOverlab.count)
    for i in 0...(removeOverlab.count - 1) {
        componentsReport[i] = removeOverlab[i].components(separatedBy: " ")
    }
    
    var reportingMe = [[String]](repeating: [], count: nameCounts)
    var reportedMe = [[String]](repeating: [], count: nameCounts)
    
    for i in 0...(nameCounts-1) {
        for j in 0...(componentsReport.count - 1) {
            if id_list[i] == componentsReport[j][0] {
                reportingMe[i].append(componentsReport[j][1])
            }
        }
    }
    
    for i in 0...(nameCounts-1) {
        for j in 0...(componentsReport.count - 1) {
            if id_list[i] == componentsReport[j][1] {
                reportedMe[i].append(componentsReport[j][0])
            }
        }
    }
    
    var reportedPeople = [String]()
    for i in 0...(nameCounts-1) {
        if reportedMe[i].count >= k {
            reportedPeople.append(id_list[i])
        }
    }
    
    var result = [Int](repeating: 0, count: nameCounts)
    
    for i in reportedPeople {
        for j in 0...(nameCounts - 1) {
            if reportingMe[j].contains(i) {
                result[j] += 1
            }
        }
    }
    
    return result
}

solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2)
