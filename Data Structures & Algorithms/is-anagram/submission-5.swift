class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        

        if s.count != t.count {
            return false
        }
        var refDic = [Character : Int ]()

        for (chS , chT) in zip(s,t){
            refDic[chS , default: 0] += 1
            refDic[chT , default: 0] -= 1
        }

        for value in refDic.values{
            if value != 0{
                return false
            }
        }
        return true
    }
}
