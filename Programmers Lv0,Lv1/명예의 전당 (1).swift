//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var honor: [Int] = []
    var result: [Int] = []
    
    for i in score{
        if honor.count <= k{
            honor.append(i)
            honor.sort(by: >)// 여기서 높은 순서대로 배치완료
            if honor.count > k{// 만약 수치 받기전에 아너의 크기가 명전 크기만큼이면 비교해보고 넣고 라스트 삭제해야지
                honor.removeLast()
            }
            if let honorLast = honor.last{ // 아너 중에서 가장 마지막 수치를
                result.append(honorLast) // 결과값에 어펜드 해준다
            }
        }
    }
    return result
}
