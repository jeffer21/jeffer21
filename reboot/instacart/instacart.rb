
def cashier(cart = [], store = {})
  sum = 0

  cart.each do |item|
    sum += store[item]
  end
  return sum
end
