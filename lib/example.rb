def add_fruits_to(cart)
	fruits = ['apple', 'banana', 'orange']
	fruits.map {|element| cart << element}
end

def remove_fruit_from(cart, fruit)
	cart.delete(fruit)
end

def total price
	price.map {|hash| hash.values}.flatten.inject(:+)
end