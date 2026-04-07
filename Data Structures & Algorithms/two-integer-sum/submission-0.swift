class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int: [Int]]()

        for (index, num) in nums.enumerated() {
            let numberToFind = target - num
            if let indices = hashMap[numberToFind] {
                return [indices[0], index]
            }
            hashMap[num] = (hashMap[num] ?? []) + [index]
        }
        return []
    }
}
