//
// Created by Vinnie Liu on 26/6/2022.

import Foundation

func isPalindrome(_ x: Int) -> Bool {
	guard x >= 0 else { return false }
	guard x > 9 else { return true }
	
	let chsArray: Array<Character> = Array("\(x)")
	let chsReversedArray: Array<Character> = chsArray.reversed()
	return chsArray == chsReversedArray
}



