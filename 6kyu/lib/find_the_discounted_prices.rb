def find_discounted(prices)
  # https://www.codewars.com/kata/find-the-discounted-prices/train/ruby
  price_arr = prices.split(' ')
  discounted = []
  (price_arr.length/2).times do
    currently_verifying = price_arr.shift(2)
    if verify_discounted(currently_verifying[0], currently_verifying[1])
      discounted.push(currently_verifying[0])
    end
  end
  discounted.join(' ')
end

def verify_discounted(price_1, price_2)
  price_1.to_i / 0.75 == price_2.to_i
end
