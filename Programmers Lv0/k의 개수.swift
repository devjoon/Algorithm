import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result = 0
    for n in i...j {
        if String(n).contains(String(k)){
            for m in String(n) {
                if Int(String(m))! == k {
                    result += 1
                }
            }
        }
    }
    return result
}
