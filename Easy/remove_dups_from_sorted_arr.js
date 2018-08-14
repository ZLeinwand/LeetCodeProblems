// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/
//
// Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
//
// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
//
// Example 1:
//
// Given nums = [1,1,2],
//
// Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
//
// It doesn't matter what you leave beyond the returned length.

const removeDuplicates = (nums) => {
  if (nums.length <= 1){
    return nums.length
  }

  currentPlace = 1
  nextPlace = 1
  prevAddition = nums[0]

  while (nextPlace < nums.length) {
    if (prevAddition !== nums[nextPlace]){
      nums[currentPlace] = nums[nextPlace]
      prevAddition = nums[currentPlace]
      currentPlace += 1
    }
    nextPlace += 1
  }

  return currentPlace
}
