func solution(_ my_string:String) -> [Int] {
    var result = [Int]()
    for i in my_string {
        if i.isNumber{
            result.append(Int(String(i))!)
        }
    }
    return result.sorted()
}
