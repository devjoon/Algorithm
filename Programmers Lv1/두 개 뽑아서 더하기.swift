//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var sortedNum = numbers.sorted()
    var result = [Int]()
    
    for i in 0..<sortedNum.count-1{
        for j in i+1..<sortedNum.count{
            if !result.contains(sortedNum[i] + sortedNum[j]){
                result.append(sortedNum[i] + sortedNum[j])
            }
        }
    }
    return result.sorted()
}
