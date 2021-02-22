test_array = [21, 14, 6, 12, 4, 13, 11, 7]

def stock_picker(stock_days)
  profit = []
  days = []
  buy_day = stock_days
  sell_day = stock_days
  sell_day.shift

  buy_day.map.with_index do |b_day, b_ind|
    sell_day.map.with_index do |s_day, s_ind|
      if b_ind < s_ind
        profits = s_day - b_day
        days.push([b_day, s_day]) unless profits < 0
        profit.push(profits) unless profits < 0
      end
    end
  end

  prof_ind = profit.rindex(profit.max)
  p "Your profit will be: $#{profit.max}"
  p "Buy and sell on these days: #{days.fetch(prof_ind)}"
end

stock_picker(test_array)

