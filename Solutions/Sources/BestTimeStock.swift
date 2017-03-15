class BestTimeStock {
  func bestTime (_ prices:[Int]) -> Int {
    var minPrice = Int.max
    var maxProfit = 0
    for currentPrice in prices {
      minPrice = min(minPrice, currentPrice)
      maxProfit = max(currentPrice - minPrice, maxProfit)
    }
    return maxProfit
  }
}
