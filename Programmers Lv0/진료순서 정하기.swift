import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var emergency = emergency
    // 값을 받을 배열을 선언
    var result = Array(repeating: 0, count: emergency.count)
    var count = 1;
    
    // 응급도 숫자 높은 순서의 인덱스를 알아내야함
    var sortedEG = emergency.sorted(by: >)
    
    
    for i in sortedEG {
        result[emergency.firstIndex(of:i)!] = count
        count += 1
    }
    // 이머전시를 sort한다음에 순서대로 돌면서 값으로 인덱스 찾기 함
    // 해당 인덱스에 해당하는곳에 값을 넣어줌
    
    return result
}
