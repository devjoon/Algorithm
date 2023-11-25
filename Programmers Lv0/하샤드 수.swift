func solution(_ x:Int) -> Bool {
    var stringX = String(x)
    var plusX = 0
    
    for i in stringX {
       plusX += Int(String(i))!
    }
    
    return x%plusX == 0 ? true : false
}
