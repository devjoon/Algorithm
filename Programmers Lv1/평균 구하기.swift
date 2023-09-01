//
//  Created by devjoon on 2023/09/01.
//
func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0,+))/Double(arr.count)
}
