import Foundation

//func solution(_ phone_number:String) -> String {
//    let count = phone_number.count - 5
//    var phone = phone_number.map{$0}
//    if count == -1 {
//            return "****"
//        }
//    for i in 0...count {
//        phone[i] = "*"
//    }
//    return String(phone)
//}

//solution("1234")
//여기까지에서 테스트 9 를 통과시키지 못함;;;

// ------------------------------------------------왜또안대 ㅠㅠ


//func solution(_ phone_number:String) -> String {
//    let count = phone_number.count - 5
//    var phone = phone_number.map{$0}
//
//    if count == -1 {
//        for i in 0...3{
//            phone[i] = "*"
//        }
//    } else {
//        for i in 0...count {
//            phone[i] = "*"
//        }
//    }
//    print(String(phone))
//    return String(phone)
//}
//
//
//solution("01012349988")
//solution("1234")

// ------------------------------------------------마지막 ... 다른로직


func solution(_ phone_number:String) -> String {
    let count = phone_number.count
    var phone = phone_number.map{$0}
    
    if count == 4 {
        return phone_number
    } else {
        for i in 0...count - 5 {
            phone[i] = "*"
        }
    }
    return String(phone)
}
solution("01012349988")
solution("1432")

//문제 이해의 오류...
/*
 4자리일 때 4자리 모두 보여주어야하는데 *처리했음,, 바보 ㅠㅠ
 */
