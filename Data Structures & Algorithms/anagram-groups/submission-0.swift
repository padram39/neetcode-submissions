class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dic = [String : [String]]()

        for item in strs{

            let sorted = item.sorted()
            dic[String(sorted) , default : []].append(item)
        }

        return Array(dic.values)
    }
}