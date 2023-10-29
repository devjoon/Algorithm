import Foundation

func solution(_ rsp:String) -> String {
    var result = ""
    for i in rsp {
        switch i {
            case "2":
            result.append("0")
            case "0":
            result.append("5")
            case "5":
            result.append("2")
            default:
            break
        }
    }
    return result
}
