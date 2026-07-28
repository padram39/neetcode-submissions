class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        
        var tempNums = Set<Int>()

        for num in nums{
            
            if tempNums.contains(num){
                return true
            }

            tempNums.insert(num) 
        }

        return false
    }
}
