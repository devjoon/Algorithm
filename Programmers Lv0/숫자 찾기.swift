import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    var num = String(num)
    var count = 1
    
    for i in num {
        if Int(String(i)) == k {
            return count
        }
        count += 1
    }
    
    return -1
}
