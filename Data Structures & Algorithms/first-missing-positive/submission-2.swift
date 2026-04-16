class Solution {
    func firstMissingPositive(_ nums: inout [Int]) -> Int {
        let sortedNums = nums.sorted()
        
        var expected = 1
        for value in sortedNums {
            if value <= 0 {
                continue
            }
            
            if value == expected {
                expected += 1
            } else if value > expected {
                return expected
            }
        }  
        return expected
    }
}