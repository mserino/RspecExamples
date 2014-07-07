require 'example'

describe 'Supermarket' do
	context 'Buy some fruits' do

		it 'add some fruits to the cart' do
			cart = []
			add_fruits_to(cart)
			expect(cart).to eq ['apple', 'banana', 'orange']
		end

		it 'remove orange from cart' do
			cart = ['apple', 'banana', 'orange']
			remove_fruit_from(cart, 'orange')
			expect(cart.include? 'orange').to be false
		end
	end

	context 'check for the total' do
		it 'final price' do
			price = [
				{banana: 2},
				{apple: 1},
				{orange: 2}
			]
			expect(total(price)).to eq 5
		end
	end
end