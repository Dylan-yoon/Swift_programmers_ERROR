import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

var str = ""
for j in 1...a {
        str += "*"
}
for i in 1...b {
    print(str)
}

// print(a + b)
