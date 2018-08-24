def find_discounted(prices)
  # https://www.codewars.com/kata/find-the-discounted-prices/train/ruby
  price_arr = prices.split(' ')
  return price_arr[0] if verify_discounted(price_arr[0],price_arr[1])
end

def verify_discounted(price_1, price_2)
  price_1.to_i / 0.75 == price_2.to_i
end
