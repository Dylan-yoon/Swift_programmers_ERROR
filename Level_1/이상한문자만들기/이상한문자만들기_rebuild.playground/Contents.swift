/*
 고려할 조건들
 1. import Foundation 을 사용하지 않으므로 component 사용 x
 2. 처음 테스트 케이스는 통과 했지만, 예외 처리 및 다시 생각해볼 것
 3. **각 단어는 하나 이상의 공백 문자로 구분되어있다.-> 이부분에서 공백 문자가 단어에 1개씩 붙어있음
 -> "try hello world" 에서
 " try hello world "
 " try hello world"
 "try   hello world "
 이 세가지 또한 구분해주어야 한다.
 
 즉 공백에 따라서, 공백이 "try    hello world" -> "TrY    HeLlO WoRlD"
 에서 공백을 그대로 출력해야한다.
 
 그렇다면? split를 사용하기 어렵다.
 
 1. 일일이 return해주는 반복문 사용?...?
 */

func solution(_ s:String) -> String {
    var wordCount = 0
    var resultWord = ""
    
    for char in Array(s) {
        if char == " " {
            wordCount = 0
            resultWord.append(char)
        } else {
            wordCount += 1
            if wordCount % 2 != 0 {
                resultWord.append(char.uppercased())
            } else {
                resultWord.append(char.lowercased())
            }
        }
    }
    return resultWord
}

solution(" a")
solution("try hello world ")
solution("awerar")
solution("     asdf       adsfa      ")

