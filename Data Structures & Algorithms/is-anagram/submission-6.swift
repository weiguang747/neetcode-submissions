class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s)
        let tArray = Array(t)

        var sDictionary = [String: Int]()
        for sChar in sArray {
            sDictionary[String(sChar)] = (sDictionary[String(sChar)] ?? 0) + 1
        }

        var tDictionary = [String: Int]()
        for tChar in tArray {
            tDictionary[String(tChar)] = (tDictionary[String(tChar)] ?? 0) + 1
        }

        if sDictionary.count != tDictionary.count {
            return false
        }

        for (key, value) in sDictionary {
            if tDictionary[key] == value {
                tDictionary[key] = nil
            }
        }
        return tDictionary == [:]
    }
}
