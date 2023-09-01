//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ record:[String]) -> [String] {
    
    let record = record
    var result = [String]()
    var dict = [String:String]()
    var modelog = [String]()
    var idlog = [String]()
    
    for log in record{
        let separated = log.components(separatedBy:" ")
        modelog.append(separated[0])
        let id = separated[1]
        idlog.append(separated[1])
        if separated.count == 3{
            let name = separated[2]
            dict[id] = name
        }
    }
    for i in 0..<modelog.count{
        if modelog[i] == "Enter"{
            result.append("\(dict[idlog[i]]!)님이 들어왔습니다.")
        }else if modelog[i] == "Leave"{
            result.append("\(dict[idlog[i]]!)님이 나갔습니다.")
        }
    }
    
    return result
}
