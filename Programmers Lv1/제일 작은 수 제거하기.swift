func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    
    if arr.count <= 1 {
        return [-1]
    }
    
    if let minValue = arr.min() {
        if let index = arr.firstIndex(of:minValue) {
            arr.remove(at:index)
        }
    }
    return arr
}
