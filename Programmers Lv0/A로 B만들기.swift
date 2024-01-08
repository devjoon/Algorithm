import Foundation

func solution(_ before:String, _ after:String) -> Int {
    var before = Array(before)
    var after = Array(after)
    
    for i in 0..<before.count {
        if after.contains(before[i]) {
            after.remove(at:after.firstIndex(of: before[i])!)
        }
    }
    
    return after.count == 0 ? 1 : 0
}
