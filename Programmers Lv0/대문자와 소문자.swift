import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    
    for i in my_string {
        if i.isUppercase {
            result.append(i.lowercased())
        } else {
            result.append(i.uppercased())
        }
    }
    
    return result
}
