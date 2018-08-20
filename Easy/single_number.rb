# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/
# Given a non-empty array of integers, every element appears twice except for one. Find that single one.
#
# Note:
#
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
#
# Example 1:
#
# Input: [2,2,1]
# Output: 1
# Example 2:
#
# Input: [4,1,2,1,2]
# Output: 4


# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    hash = Hash.new

    nums.each do |num|
        if hash[num] == nil
            hash[num] = false
        else
            hash[num] = true
        end
    end

    hash.each { |key, val| return key unless val }
end
