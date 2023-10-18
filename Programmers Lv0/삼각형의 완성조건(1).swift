func solution(_ sides:[Int]) -> Int {
    var sortArr = sides.sorted()
    return sortArr[0] + sortArr[1] > sortArr[2] ? 1 : 2
}
