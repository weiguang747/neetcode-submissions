class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()
        let mapping = [")": "(", "]": "[", "}": "{"]

        for c in s {
            let charStr = String(c)
            if let matchingOpen = mapping[charStr] {
                if !stack.isEmpty && stack.last == matchingOpen {
                    stack.popLast()
                } else {
                    return false
                }
            } else {
                stack.append(charStr)
            }
        }
        return stack.isEmpty
    }
}