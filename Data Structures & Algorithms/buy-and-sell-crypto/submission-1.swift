class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var right = 0

        var maxProfit = 0
        while right < prices.count {
            let difference = prices[right] - prices[left]

            if difference > maxProfit {
                maxProfit = difference
            }
            
            if prices[right] < prices[left] {
                left = right
            }

            right += 1
        }
        return maxProfit
    }
}