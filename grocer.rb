def consolidate_cart(cart, result)
  when "adds a count of one to each item when there are no duplicates" do
      cart = [
        {"AVOCADO" => {:price => 3.00, :clearance => true }},
        {"AVOCADO" => {:price => 3.00, :clearance => true }},
        {"KALE"    => {:price => 3.00, :clearance => false}}
      ]
      result = [
        {"AVOCADO" => {:price => 3.00, :clearance => true, :count => 2},
        {"KALE"    => {:price => 3.00, :clearance => false, :count => 1}
      ]
  
    end

    it "increments count when there are multiple items" do
      avocado = find_item('AVOCADO')
      cart = [avocado, avocado, find_item('KALE')]

      result = consolidate_cart(cart)
      expect(result["AVOCADO"][:price]).to eq(3.00)
      expect(result["AVOCADO"][:clearance]).to eq(true)
      expect(result["AVOCADO"][:count]).to eq(2)

      expect(result["KALE"][:price]).to eq(3.00)
      expect(result["KALE"][:clearance]).to eq(false)
      expect(result["KALE"][:count]).to eq(1)
    end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
