//
//  Created by devjoon on 2023/09/05.
//
func solution(_ n:Int, _ m:Int) -> [Int] {
    let maxI = max(n,m)
    let minI = min(n,m)
    
    var GCD = 0
    
    for i in 1...minI {
        if n % i == 0 && m % i == 0 {
            GCD = i
        }
    }
    
    var LCM = n*m/GCD
    
    return [GCD, LCM]
}
