func solution(_ left:Int, _ right:Int) -> Int {
    var yak = 0
    var result = 0
    for i in left...right{
        for j in 1...i{
            if i%j == 0{
                yak += 1
            }
        }
        if yak % 2 == 0{
            result += i
        }else{
            result -= i
        }
        yak = 0
    }
    return result
}
