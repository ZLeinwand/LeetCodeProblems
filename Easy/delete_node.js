/**
* Link- https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/553/
* Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.
*
* Given linked list -- head = [4,5,1,9], which looks like following:
*
*    4 -> 5 -> 1 -> 9
*
* example:
* node = 5
* Output: [4,1,9]
* Explanation: You are given the second node with value 5, the linked list
*            should become 4 -> 1 -> 9 after calling your function.
*
* Definition for singly-linked list.
* class ListNode
*     attr_accessor :val, :next
*     def initialize(val)
*         @val = val
*         @next = nil
*     end
* end
/**

/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} node
 * @return {void} Do not return anything, modify node in-place instead.
 */
var deleteNode = function(node) {
    while (node != null) {
        node.val = node.next.val
        if (!node.next.next) {
            node.next = null
        }
        node = node.next
    }
};
