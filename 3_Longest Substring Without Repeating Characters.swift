//
// Created by Vinnie Liu on 26/6/2022.

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
	guard s.count >= 2 else { return s.count }
	let array = Array(s)
	var dict: [Character: Int] = .init()
	var maxLen = 0
	var start = 0
	
	for (index, element) in array.enumerated() {
		if let preIndex = dict[element] {
			start = max(start, preIndex+1)
		}
		maxLen = max(maxLen, index-start+1)
		dict[element] = index
	}
	return maxLen
}

print(lengthOfLongestSubstring("pwwkew"))