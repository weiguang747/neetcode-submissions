class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s)
        let tArray = Array(t)
        
        if sArray.count != tArray.count {
            return false
        }
        
        var sCount: [Character: Int] = [:]
        var tCount: [Character: Int] = [:]
        
        for char in sArray {
            if let count = sCount[char] {
                sCount[char] = count + 1
            } else {
                sCount[char] = 1
            }
        }
        
        for char in tArray {
            if let count = tCount[char] {
                tCount[char] = count + 1
            } else {
                tCount[char] = 1
            }
        }
        
        for (key, value) in sCount {
            if tCount[key] != value {
                return false
            }
        }
        return true
    }
}
