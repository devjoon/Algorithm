//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var number = 1
    var count = 1
    var temp = [String]()
    for i in 0..<words.count{
        if number == n+1{
            number = 1
            count += 1
        }
        if temp.isEmpty{
            temp.append(words[i])
            number += 1
            continue
        }else if temp[i-1].last == words[i].first{
            if temp.contains(words[i]){
                return [number, count]
            }
            temp.append(words[i])
            number += 1
            continue
        }else if temp[i-1].last != words[i].first{
            return [number, count]
        }
    }
    return [0,0]
}
