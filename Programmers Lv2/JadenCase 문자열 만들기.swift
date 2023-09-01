//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ s:String) -> String {
    var sloarr = Array(s.lowercased())
    var result = ""
    for i in 0..<sloarr.count{
        if i != 0 && sloarr[i-1] == " " && sloarr[i].isLetter{
            result.append(sloarr[i].uppercased())
        }else if i == 0 && sloarr[i].isLetter{
            result.append(sloarr[i].uppercased())
        }else{
            result.append(sloarr[i])
        }
    }
    return result
}
