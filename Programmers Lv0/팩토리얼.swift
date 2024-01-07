import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var result = 1
    func facto(_ i: Int) -> Int{
        if i == 1 {
            return result
        }
        result *= i
        return facto(i-1)
    }
    
    for i in 1...10 {
        result = 1
        if facto(i) > n  {
            return i - 1
        }
    }
    return 10
}
