class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var results = [Int]()
        var itemToSkip = 0
        for index in 0...nums.count - 1{
            var product = 1
            for item in 0...nums.count - 1 {
                if item != index{
                    product = product * nums[item]
                }
            }
            results.append(product)
        }
        return results
    }
}
