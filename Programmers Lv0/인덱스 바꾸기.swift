import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var temp1 = Array(my_string)[num1]
    var temp2 = Array(my_string)[num2]
    var result = Array(my_string)
    result[num1] = temp2
    result[num2] = temp1
    return String(result)
}

