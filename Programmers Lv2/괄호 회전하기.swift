//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ s:String) -> Int {
    var s = Array(s)
    var stack = [String]()
    var count = 0
    for _ in 0..<s.count{
        s.append(s.removeFirst())
        stack = []
        for i in s{
            if stack.isEmpty{
                stack.append(String(i))
            }else{
                if stack.last == "(" && String(i) == ")"{
                    stack.removeLast()
                }else if stack.last == "[" && String(i) == "]"{
                    stack.removeLast()
                }else if stack.last == "{" && String(i) == "}"{
                    stack.removeLast()
                }else{
                    stack.append(String(i))
                }
            }
        }
        if stack.isEmpty{
            count += 1
        }
    }
    return count
}
