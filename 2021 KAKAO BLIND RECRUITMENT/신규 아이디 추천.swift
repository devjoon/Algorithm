//
//  Created by devjoon on 2023/09/01.
//
import Foundation

func solution(_ new_id:String) -> String {
    var new_id = new_id
    new_id = stage1(new_id)
    new_id = stage2(new_id)
    new_id = stage3(new_id)
    new_id = stage4(new_id)
    new_id = stage5(new_id)
    new_id = stage6(new_id)
    new_id = stage7(new_id)
    return new_id
}

func stage1 (_ id:String) -> String{
    return id.lowercased()
}

func stage2 (_ id:String) -> String{
    var arr = Array(id)
    var result = ""
    for i in arr{
        if i.isLetter{
            result.append(i)
        }else if i.isNumber{
            result.append(i)
        }else if i == "-" || i == "_" || i == "."{
            result.append(i)
        }
    }
    return result
}

func stage3 (_ id:String) -> String{
    var arr = Array(id)
    var result = ""
    for i in arr{
        if result.last == "." && i == "."{
            result.removeLast()
        }
        result.append(i)
    }
    return result
}

func stage4 (_ id:String) -> String{
    var id = id
    if id.first == "."{
        id.removeFirst()
    }
    if id.last == "."{
        id.removeLast()
    }
    return id
}

func stage5 (_ id:String) -> String{
    if id.isEmpty{
        return "a"
    }
    return id
}

func stage6 (_ id:String) -> String{
    var arr = Array(id)
    var result = ""
    if arr.count > 15{
        for i in 0...14{
            result.append(arr[i])
        }
        if result.last == "."{
            result.removeLast()
        }
    }else{
        return id
    }
    return result
}

func stage7 (_ id:String) -> String{
    var id = id
    while id.count <= 2{
        id.append(id.last!)
    }
    return id
}
