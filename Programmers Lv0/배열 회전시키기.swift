import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var numbers = numbers
    if direction == "right" {
        var temp = numbers.removeLast()
        numbers = [temp] + numbers
    } else {
        var temp = numbers.removeFirst()
        numbers = numbers + [temp]
    }
    
    return numbers
}
