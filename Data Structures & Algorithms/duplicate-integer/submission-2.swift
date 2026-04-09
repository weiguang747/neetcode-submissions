class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seenDictionary = [Int: Int]()
        for num in nums {
            if seenDictionary[num] != nil {
                return true
            } else {
                seenDictionary[num] = 1
            }
        }
        return false
    }
}
