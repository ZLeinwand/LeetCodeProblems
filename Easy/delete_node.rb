# Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.
#
# Link- https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/553/
#
# Given linked list -- head = [4,5,1,9], which looks like following:
#
#    4 -> 5 -> 1 -> 9
#
# example:
# node = 5
# Output: [4,1,9]
# Explanation: You are given the second node with value 5, the linked list
#            should become 4 -> 1 -> 9 after calling your function.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.

def delete_node(node)
    while node != nil
        node.val = node.next.val
        node.next = nil unless node.next.next
        node = node.next
    end
end
