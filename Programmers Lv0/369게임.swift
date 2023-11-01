import Foundation

func solution(_ order:Int) -> Int {
    var arrOrder = Array(String(order))
    return arrOrder.filter{$0 == "3" || $0 == "6" || $0 == "9"}.count
}
