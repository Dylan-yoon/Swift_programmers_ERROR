func solution(_ s:String) -> String {
    let splitString = s.split(separator: " ")
    var result = [String]()
    
    for word in splitString {
        var count = 1
        for i in word {
            if count % 2 != 0 {
                result.append(String(i).uppercased())
            } else {
                result.append((String(i)).lowercased())
            }
            count += 1
        }
        result.append(" ")
    }
    result.popLast()
    return result.joined(separator: "")
}

solution("try hello world")
solution("awerar")
