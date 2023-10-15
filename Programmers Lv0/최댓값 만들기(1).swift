import Foundation

func solution(_ numbers:[Int]) -> Int {
    var numbers = numbers.sorted()
    return numbers[numbers.count-1] * numbers[numbers.count-2]
}
