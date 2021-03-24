//https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count < 2 { return [] }
        var seen = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let secondIndex = seen[target - num] {
                return [index, secondIndex]
            } 
            seen[num] = index   
        }
        return []
    }
}
