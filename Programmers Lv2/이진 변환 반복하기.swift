//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var result1 = 0
    var result2 = 0
    while s.count != 1{
        result1 += 1
        var count = 0
        for i in s{
            if i != "0"{
                count += 1
            }else{
                result2 += 1
            }
        }
        s = String(count,radix: 2)
    }

    return [result1,result2]
}
