import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    
    var count = 0
    var result = ""
    for i in cipher {
        count += 1
        if count % code == 0 {
            result.append(i)
        }
    }
    
    return result
}

