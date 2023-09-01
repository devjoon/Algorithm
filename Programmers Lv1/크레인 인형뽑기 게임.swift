//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var stack = [Int]()
    var board = board
    var answer = 0
    var j = 0
    for i in moves{
        while(j<board[i-1].count){
            if board[j][i-1] == 0{
                j += 1
            }else{
                if stack.last == board[j][i-1]{
                    stack.removeLast()
                    board[j][i-1] = 0
                    answer += 2
                    break
                }
                stack.append(board[j][i-1])
                board[j][i-1] = 0
                break
            }
        }
        j = 0
    }
    return answer
}
