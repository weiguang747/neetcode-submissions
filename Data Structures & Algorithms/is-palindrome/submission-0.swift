class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let filteredString = s.lowercased().filter { $0.isLetter || $0.isNumber }
        let stringArray = Array(filteredString)
        var left = 0
        var right = stringArray.count - 1
        
        while left < right {
            if stringArray[left] != stringArray[right] {
                return false
            }
            
            left = left + 1
            right = right - 1
        }
        
        return true
    }
}
