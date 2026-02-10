def stock_picker(prices)
  return [] if prices.length < 2

  min_price = prices[0]
  min_index = 0
  
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |current_price, current_day|
    # 1. Atualizamos o menor preço encontrado até agora
    if current_price < min_price
      min_price = current_price
      min_index = current_day
      next # Pula para o próximo dia, pois não faria lucro comprando e vendendo no mesmo dia
    end

    # 2. Calculamos o lucro potencial vendendo hoje
    current_profit = current_price - min_price

    # 3. Se for o melhor lucro, guardamos os índices
    if current_profit > max_profit
      max_profit = current_profit
      best_days = [min_index, current_day]
    end
  end

  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [1, 4]
