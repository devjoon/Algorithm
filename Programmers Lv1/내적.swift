//
//  Created by devjoon on 2023/09/17.
//
func solution(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a,b).map {$0.0*$0.1}.reduce(0,+)
}
