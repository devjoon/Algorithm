import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    
    var slice1 = slice
    var result = 1
    while slice1<n{
        slice1 += slice
        result += 1
    }
    
    return result
}
