/**
 This question is a bit tricky due to the
 announced limitations: __O(n) and no division operation__
 Therefore, if using a suitable approach, we need to check the left and right
 of the target number
 */

 // LeetCode Q238
func productExceptSelf(_ nums: [Int]) -> [Int] {
    // Get the total count of nums
    let count = nums.count
    
    // return result
    var newArray = [Int]()
    
    // Loop the 1st time, check left of the number
    var left = 1
    for (i, _) in nums.enumerated() {
        // since nums[0] has no numbers on the left
        // we will assign a "1" to it
        if i > 0 {
            left = left * nums[i - 1]
        }
        newArray.append(left)
    }
    
    var right = 1
    
    for i in stride(from: count - 1, through: 0, by: -1) {
        // since nums[count - 1] has no numbers on the right
        // we will assign a 1 to it
        if i < count - 1 {
            right = right * nums[i + 1]
        }
        // direct multiply to the target index
        newArray[i] *= right
    }
    // answer
    return newArray
}