import Foundation

/*
 Write a function that reverses a string. The input string is given as an array of characters s.

 You must do this by modifying the input array in-place with O(1) extra memory.

 Example 1:

 Input: s = ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 Example 2:

 Input: s = ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
 */

class Solution {
    func reverseString(_ s: inout [Character]) {
        var count = s.count

        func reverseString(_ s: inout [Character], count: inout Int) {
            guard count > 0 else { return }
            if let last = s.popLast() {
                count -= 1
                s.insert(last, at: s.count - count)
                reverseString(&s, count: &count)
            }
        }

        reverseString(&s, count: &count)
    }
}

var characters: [Character] = ["H","a","n","n","a","h"]

Solution().reverseString(&characters)
print(characters)

