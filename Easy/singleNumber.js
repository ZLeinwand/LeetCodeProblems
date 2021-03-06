// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/
//
// Given a non-empty array of integers, every element appears twice except for one. Find that single one.
//
// Note:
//
// Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
//
// Example 1:
//
// Input: [2,2,1]
// Output: 1
// Example 2:
//
// Input: [4,1,2,1,2]
// Output: 4

/**
 * @param {number[]} nums
 * @return {number}
 */
var singleNumber = function(nums) {
    let hash = {}

    for(let i = 0; i < nums.length; i++){
        if (typeof hash[nums[i]] === 'undefined'){
            hash[nums[i]] = false
        }else{
            hash[nums[i]] = true
        }
    }
    for (k in hash){
        if (hash.hasOwnProperty(k) && !hash[k]){
            return Number(k)
        }
    }
};
