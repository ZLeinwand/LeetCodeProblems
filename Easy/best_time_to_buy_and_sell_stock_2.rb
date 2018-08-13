# Say you have an array for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

# Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).

# @param {Integer[]} prices
# @return {Integer}

def max_profit(prices)
    output = 0
    current_low = prices.first
    current_high = prices.first

    prices.each_with_index do | price, idx |
      next if idx == 0
      prev_price = prices[idx - 1]

      if price < prev_price
        output += current_high - current_low
        current_low = price
        current_high = price
      elsif price > prev_price
        current_high = price
      end
      output += current_high - current_low if idx == prices.length - 1
    end

    output
end

# tests

p max_profit([7,1,5,3,6,4]) == 7
p max_profit([1,2,3,4,5]) == 4
p max_profit([7,6,4,3,1]) == 0
