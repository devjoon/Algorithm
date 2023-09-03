//
//  Created by devjoon on 2023/09/01.
//
func solution(_ numbers:[Int], _ k:Int) -> Int {
    var k = k
    var numbers = numbers
    var result = 0
    var index = 0
    while k != 0 {
        k -= 1
        result = numbers[index]
        
        if index == numbers.count - 1 {
            index = 1
        }else if index == numbers.count - 2 {
            index = 0
        }else{
            index += 2
        }
    }
    return result
}
