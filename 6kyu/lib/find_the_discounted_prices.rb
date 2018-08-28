def find_discounted(prices)
  # https://www.codewars.com/kata/find-the-discounted-prices/train/ruby
  price_arr = prices.split(' ')
  discounted = []

  while price_arr.length > 0 do

    currently_verifying = price_arr.shift.to_i
    if verify_discounted(currently_verifying, price_arr)
      price_arr.delete_at(verify_discounted(currently_verifying, price_arr))
      discounted.push(currently_verifying)
    end
  end

  discounted.join(' ')
end

def verify_discounted(currently_verifying, price_arr)
  currently_verifying /= 0.75
  price_arr.index(currently_verifying.to_i.to_s)
end
