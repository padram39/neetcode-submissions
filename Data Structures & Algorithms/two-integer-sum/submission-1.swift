class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {


        var hashMap = [Int:Int]()


        for (index , value) in nums.enumerated(){
            let sub = target - value
            if (hashMap.contains { $0.key == sub }){
                return [hashMap[sub , default : 0] , index]
            }
            hashMap[value] = index

        }  
        return []
    }
}
