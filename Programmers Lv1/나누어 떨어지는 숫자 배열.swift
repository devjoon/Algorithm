func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    // arr을 반복문 돌리면서 divisor로 나누기 해서 나머지0이면 result에 넣어주기
    var result = [Int]()
    for i in arr {
        if i % divisor == 0 {
            result.append(i)
        }
    }
    
    return result.count > 0 ? result.sorted() : [-1]
}
