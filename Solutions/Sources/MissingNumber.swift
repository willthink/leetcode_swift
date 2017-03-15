class MissingNumber {
  func missingNumber (_ nums: [Int]) -> Int {
    guard nums.count > 0 else {
      return 0
    }
    var ret = 0
    for i in 0..<nums.count {
      ret ^= i
      ret ^= nums[i]
    }
    return ret^nums.count
  }
}
