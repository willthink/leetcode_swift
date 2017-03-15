class RemoveElement {
  func removeElement(_ nums: inout [Int], _ value: Int) -> Int {
    var slow = 0
    var fast = 0
    while fast < nums.count {
      if nums[fast] != value {
        nums[slow] = nums[fast]
        slow += 1
        fast += 1
      } else {
        fast += 1 
      }
    }
    return slow
  }
}
