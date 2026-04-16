class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        var left = 1

        if nums.count > 1 {
            for index in 1...nums.count - 1 {
                if nums[index] != nums[index - 1] {
                    nums[left] = nums[index]
                    left += 1
                }
            }
        }
        return left
    }
}