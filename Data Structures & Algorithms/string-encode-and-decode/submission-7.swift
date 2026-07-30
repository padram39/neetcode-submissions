class Solution {

    func encode(_ strs: [String]) -> String {
        if strs.isEmpty { return "[[EMPTY_ARRAY]]" }
        return strs.joined(separator : "----")
    }

    func decode(_ str: String) -> [String] {
        if str == "[[EMPTY_ARRAY]]" { return [] }
        return str.components(separatedBy: "----")
    }
}
