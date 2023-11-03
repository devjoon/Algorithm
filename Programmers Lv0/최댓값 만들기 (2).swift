import Foundation

func solution(_ numbers:[Int]) -> Int {
    var num = numbers.sorted()
    return num[0]*num[1] > num[num.count-1]*num[num.count-2] ? num[0]*num[1] : num[num.count-1]*num[num.count-2]
}
