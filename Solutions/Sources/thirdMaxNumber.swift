class ThirdMaxNumber {
  func thirdMaxNumber(_ nums: [Int]) -> Int {
    var top3 = Set<Int>()
    for num in nums {
      top3.insert(num)
      if top3.count > 3 {
        let min = top3.min() 
        top3.remove(min!)
      }
    }
    return (top3.count == 3) ? top3.min()! : top3.max()!
  }
}
