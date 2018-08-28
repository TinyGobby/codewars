def discover_original_price(sale_price, percentage)
  # https://www.codewars.com/kata/discover-the-original-price/train/ruby
  (sale_price.to_f / (1 - percentage.to_f / 100)).round(2)
end
