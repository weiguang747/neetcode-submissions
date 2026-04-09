class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }

        let stringX = Array("\(x)")
        
        if stringX.count == 1 {
            return true
        }

        var reverseStringX = stringX
        print(reverseStringX)
        reverseStringX.reverse()
        print(reverseStringX)
        
        for (index, value) in stringX.enumerated() {
            if reverseStringX[index] != value {
                return false
            }
        }
        return true
    }
}
