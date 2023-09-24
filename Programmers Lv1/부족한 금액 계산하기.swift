import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var price = price
    var fullprice = 0
    for i in 1...count{
        fullprice += price*i
    }
    return Int64(fullprice - money) > 0 ? Int64(fullprice - money) : 0
}
