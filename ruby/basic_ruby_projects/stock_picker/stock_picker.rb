def stock_picker(stock_prices)
  max_profit = 0
  better_days = []

  stock_prices.each_with_index do |buy_price, day_buy|
    (day_buy + 1...stock_prices.length).each do |day_sell|
      sell_price = stock_prices[day_sell]
      actual_profit = sell_price - buy_price

      if actual_profit > max_profit
        max_profit = actual_profit
        better_days = [day_buy, day_sell]
      end
    end
    
  end

  return better_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  # for a profit of $15 - $3 == $12
