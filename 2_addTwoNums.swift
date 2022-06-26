//
// Created by Vinnie Liu on 26/6/2022.

import Foundation

// 2. Add Two Numbers


// Definition for singly-linked list.
public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
	var link1 = l1
	var link2 = l2
	let result = ListNode()
	
	var current = result
	var sum = 0
	
	while link1 != nil || link2 != nil {
		if let link = link1 {
			sum += link.val
			link1 = link.next
		}
		
		if let link = link2 {
			sum += link.val
			link2 = link.next
		}
		
		current.next = ListNode(sum % 10)
		sum /= 10
		current = current.next!
	}
	
	if sum > 0 {
		current.next = ListNode(sum % 10)
	}
	
	return result.next
}

_ = addTwoNumbers(ListNode(2, ListNode(4, ListNode(3))), ListNode(5, ListNode(6, ListNode(4))))
