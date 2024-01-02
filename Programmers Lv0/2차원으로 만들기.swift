import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    // numlist를 배열로 돌리는데 카운트가 n일때마다 리설트에 배열을 어팬드 하게 구현
    var count = 0
    var result = [[Int]]()
    var temp = [Int]()
    for i in num_list {
        temp.append(i)
        count += 1
        
        if count == n {
            result.append(temp)
            count = 0
            temp = []
        }
    }
    
    return result
}
