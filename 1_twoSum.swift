//
// Created by Vinnie Liu on 25/6/2022.

import Foundation

//1, Two Sum
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
	var dict: [Int: Int] = [:]
	for (i, element) in nums.enumerated() {
		if let index = dict[target - element] {
			return [index, i]
		}
		dict[element] = i
	}
	return []
}

print(twoSum([3,3,4], 6))

