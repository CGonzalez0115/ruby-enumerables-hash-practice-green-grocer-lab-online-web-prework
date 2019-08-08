def consolidate_cart(cart, result)
  when "adds a count of one to each item when there are no duplicates" do
      cart => [
        {"AVOCADO" => {:price => 3.00, :clearance => true }},
        {"AVOCADO" => {:price => 3.00, :clearance => true }},
        {"KALE"    => {:price => 3.00, :clearance => false}}
      ]
      result => [
        {"AVOCADO" => {:price => 3.00, :clearance => true, :count => 2},
        {"KALE"    => {:price => 3.00, :clearance => false, :count => 1}
      ]

end

def apply_coupons(cart, coupons)
  when "adds the coupon price to the property hash of couponed item" do# code here
  cart => [:item] "AVOCADO", :num => 2, :cost => 5.00}
  coupons => {
    "AVOCADO" => {:price => 3.00, :clearance => true, :count => 1},
    "KALE"    => {:price => 3.00, :clearance => false, :count => 1},
    "AVOCADO W/COUPON" => {:price => 2.50, :clearance => true, :count => 2},
  }

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
