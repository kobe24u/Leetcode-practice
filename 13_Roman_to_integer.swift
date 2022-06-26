//
// Created by Vinnie Liu on 26/6/2022.

import Foundation

func romanToInt(_ s: String) -> Int {
	let dict: [Character: Int] = [
		"I":1,
		"V":5,
		"X":10,
		"L":50,
		"C":100,
		"D":500,
		"M":1000
	]
	
	var total = 0
	var i = 0
	let charArray: Array<Character> = Array(s)
	while i < charArray.count {
		let currentChar: Character = charArray[i]
		var currentNum: Int = dict[currentChar] ?? 0
		if i < charArray.count - 1 {
			let nextChar: Character = charArray[i+1]
			let nextNum: Int = dict[nextChar] ?? 0
			if nextNum > currentNum {
				currentNum = nextNum - currentNum
				// if we found a left number < right number, index add 1 again here to skip the next index
				i += 1
			}
		}
		i += 1
		total += currentNum
	}
	return total
}


print(romanToInt("MCMXCIV"))