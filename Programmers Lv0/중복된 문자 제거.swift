import Foundation

func solution(_ my_string:String) -> String {
    var myStringArray = Array(my_string)
    var index = 0
    var removeArrayIndex = [Int]()

    while index < myStringArray.count {
        for i in index+1..<myStringArray.count {
            if myStringArray[index] == myStringArray[i] {
                removeArrayIndex.append(i)
            }
        }
        for i in removeArrayIndex.reversed() {
            myStringArray.remove(at: i)
        }
        removeArrayIndex = []
        index += 1
    }
    return String(myStringArray)
}
