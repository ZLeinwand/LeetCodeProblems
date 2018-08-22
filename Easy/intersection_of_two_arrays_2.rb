# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/674/
#
# Given two arrays, write a function to compute their intersection.
#
# Example 1:
#
# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2,2]
# Example 2:
#
# Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
# Output: [4,9]
# Note:
#
# Each element in the result should appear as many times as it shows in both arrays.
# The result can be in any order.
# Follow up:
#
# What if the given array is already sorted? How would you optimize your algorithm?
# What if nums1's size is small compared to nums2's size? Which algorithm is better?
# What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}

# answer 1
def intersect(nums1, nums2)
    num_hash = Hash.new(0)
    output = []

    nums1.each { |num| num_hash[num] += 1 }

    nums2.each do |num|
        output << num if num_hash[num] > 0
        num_hash[num] -= num
    end

    output
end

# arrays are sorted
def intersect(nums1, nums2)
    one = 0
    two = 0
    output = []
    while one < nums1.length && two < nums2.length
        if nums1[one] == nums2[two]
            output << nums1[one]
            one += 1
            two += 1
        elsif nums1[one] < nums2[two]
            one += 1
        else
            two += 1
        end
    end

    output
end
