//
//  Created by devjoon on 2023/09/15.
//
func solution(_ num:Int, _ total:Int) -> [Int] {
    var middleValue = 0
    var result = Array(repeating:0 , count:num)
    
    if num%2 == 1{
        middleValue = total/num
    } else {
        middleValue = total/num + 1
    }
    
    for i in 0..<result.count {
        result[i] = middleValue - (num/2 - i)
    }
    
    return result
}
