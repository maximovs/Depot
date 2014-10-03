class SetPriceToLineItem < ActiveRecord::Migration
 def up
    # replace multiple items for a single product in a cart with a single item
    Cart.all.each do |cart|
      # count the number of each product in the cart
      cart.line_items.each do |line|
      	line.price = line.product.price
        line.save!
      end
    end
  end

  def down
    # No work is needed
  end
end
