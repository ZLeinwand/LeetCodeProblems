# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/
#
# Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
#
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
#
# Example 1:
#
# Given nums = [1,1,2],
#
# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
#
# It doesn't matter what you leave beyond the returned length.
#

# @param {Integer[]} nums
# @return {Integer}

def remove_duplicates(nums)
    return nums.length if nums.length <= 1
    current_place = 1
    next_place = 1
    prev_addition = nums.first

    while next_place < nums.length
        unless prev_addtion == nums[next_place]
            nums[current_place] = nums[next_place]
            prev_addition = nums[current_place]
            current_place += 1
        end
        next_place += 1
    end
    current_place
end
