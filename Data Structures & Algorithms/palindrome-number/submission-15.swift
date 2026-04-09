class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }

        let stringX = Array("\(x)")
        
        if stringX.count == 1 {
            return true
        }

        for (index, value) in stringX.enumerated() {
            if stringX[stringX.count - index - 1] != value {
                return false
            }
        }
        return true
    }
}
