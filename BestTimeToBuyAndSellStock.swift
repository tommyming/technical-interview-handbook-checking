func maxProfit(_ prices: [Int]) -> Int {
    
    // 2 Pointer
    var totalCount = 0
    var start = 0
    
    for (i, price) in prices.enumerated() {
        
        // First element initialization, always assign the smallest value
        if i == 0 || price < start {
            start = price
        }
        
        // If the price is larger, replace it, else keep
        if price - start > totalCount {
            totalCount = price - start
        }
    }
    // return the biggest price, 0 if none
    return totalCount
}