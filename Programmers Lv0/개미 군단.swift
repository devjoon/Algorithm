import Foundation

func solution(_ hp:Int) -> Int {
    var hp = hp
    var a = 0
    
    while hp - 5 >= 0 {
        hp -= 5
        a += 1
    }
    
    while hp - 3 >= 0 {
        hp -= 3
        a += 1
    }
    
    while hp - 1 >= 0 {
        hp -= 1
        a += 1
    }
    
    return a
}
