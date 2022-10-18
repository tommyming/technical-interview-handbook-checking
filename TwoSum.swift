// Two Sum (LeetCode #1)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // The hashmap needs to be mutable to 
        var dictionary = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            // Check if the reduction result is in the hashmap
            if let index = dictionary[target - num] {
                // If exists and not having the same index
                if i != index {
                    // return answer
                    return [index, i]
                }
                // If same, that means duplication
            }
            // If not in dictionary, add it in
            dictionary[num] = i
            // continue loop
        }
        // Cannot find the result, return empty array
        return []
    }
}