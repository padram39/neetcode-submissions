class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = [Set<Character>](repeating: [], count: 9)
        var columns = [Set<Character>](repeating: [], count: 9)
        var boxes = [Set<Character>](repeating: [], count: 9)
        for r in 0..<9 {
            for c in 0..<9 {
                if board[r][c] == "." { continue }
                let boxIndex = (r / 3) * 3 + (c / 3)

                if rows[r].contains(board[r][c]) || columns[c].contains(board[r][c]) || boxes[boxIndex].contains(board[r][c]) {
                    return false
                }
                rows[r].insert(board[r][c])
                columns[c].insert(board[r][c])
                boxes[boxIndex].insert(board[r][c])
            }
        }

        return true
    }
}
