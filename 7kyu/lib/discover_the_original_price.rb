def discover_original_price(sale_price, percentage)
  # We need to write some code to return the original price of a product, the return type must be of type decimal and the number must be rounded to two decimal places.
  # We will be given the sale price (discounted price), and the sale percentage, our job is to figure out the original price.
  # https://www.codewars.com/kata/discover-the-original-price/train/ruby
  (sale_price.to_f/(1-percentage.to_f/100)).round(2)
end
