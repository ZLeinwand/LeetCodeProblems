# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/880/
#
# Given a 32-bit signed integer, reverse digits of an integer.
#
# Example 1:
#
# Input: 123
# Output: 321
# Example 2:
#
# Input: -123
# Output: -321
# Example 3:
#
# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

# @param {Integer} x
# @return {Integer}

#done without string conversion
def reverse(x)
    holding_arr = []
    if x < 0
        negative = true
        x *= -1
    else
        negative = false
    end

    until x == 0
        digit = x % 10
        holding_arr.unshift(digit)
        x /= 10
    end
    output = 0
    holding_arr.each_with_index do |digit, idx|
        output += digit * (10 ** (idx))
    end

    output = negative ? output * -1 : output

    return 0 if output < -2 ** 31 || output > (2 ** 31) - 1

    output
end
