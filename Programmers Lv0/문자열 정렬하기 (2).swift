import Foundation

func solution(_ my_string:String) -> String {
    var string = Array(my_string.lowercased()).sorted()
    return String(string)
}
