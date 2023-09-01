//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dict = ["R":0, "T":0, "C":0, "F": 0, "J": 0, "M": 0, "A":0, "N": 0]
    var res = ""
    
    for i in 0..<survey.count {
        let first = String(survey[i].first!)
        let second = String(survey[i].last!)
        
        switch choices[i]{
            case 1...3:
                dict[first] = dict[first]! + 4 - choices[i]
            case 5...7:
                dict[second] = dict[second]! + choices[i] - 4
            default:
                break
        }
    }
    dict["R"]! >= dict["T"]! ? res.append("R") : res.append("T")
    dict["C"]! >= dict["F"]! ? res.append("C") : res.append("F")
    dict["J"]! >= dict["M"]! ? res.append("J") : res.append("M")
    dict["A"]! >= dict["N"]! ? res.append("A") : res.append("N")
    
    return res
    
}
