import Foundation

func solution(_ array:[Int]) -> [Int] {
    var max = 0
    var index = 0
    for (i,v) in array.enumerated() {
        if max < v {
            max = v
            index = i
        }
    }
    return [max,index]
}
