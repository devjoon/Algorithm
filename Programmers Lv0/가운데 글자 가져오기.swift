func solution(_ s:String) -> String {
    var s = Array(s)
    if s.count % 2 == 0 {
        return ("\(s[s.count / 2 - 1 ])\(s[s.count / 2])")
    } else {
        return ("\(s[s.count / 2])")
    }

    return ""
}
