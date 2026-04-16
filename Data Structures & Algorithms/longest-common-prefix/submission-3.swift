class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        var output = [String]()

        var position = 0
        while true {
            var tempChar: String? = nil
            var index = 0
            for str in strs {
                let stringArray = Array(str)

                if position < stringArray.count {
                    let char = String(stringArray[position])

                    if tempChar == nil {
                        tempChar = char
                    } else if tempChar != char {
                        return output.joined(separator: "") 
                    }
                    
                    index += 1
                    if index == strs.count {
                        output.append(char)
                        position += 1
                    }
                } else {
                    return output.joined(separator: "")
                }

            }
        }
    }
}