//
//  Created by devjoon on 2023/09/01.
//
func solution(_ s:String) -> String {
    var arr = s.split(separator:" ").map{Int($0)!}.sorted(by:<).map{String($0)}
    return "\(arr.first!) \(arr.last!)"
}
