require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
    coupons.each do |coupon|
      #binding.pry
      item_w_coupon = find_item_by_name_in_collection(coupon[:item], cart)
           if  !!item_w_coupon && coupon[:num] <=  item_w_coupon[:count]
             final_item = {:item => "#{item_w_coupon[:item]} W/COUPON", :price => coupon[:cost]/coupon[:num], :clearance => item_w_coupon[:clearance], :count => coupon[:num]}
             cart << final_item
             item_w_coupon[:count] -= coupon[:num]
    end
  end
  cart
end

def apply_clearance(cart)
  cart.each do |food|
    if !!food[:clearance]
      food[:price] = food[:price] * 0.8
    binding.pry
    end
  end
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
