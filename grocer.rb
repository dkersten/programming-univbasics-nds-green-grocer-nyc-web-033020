def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  i = 0
  
  while i < collection.length do
    if collection[i][:item] == name
      return collection[i]
    end
     i += 1
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  unique_items = []
  i = 0
  
  while i < cart.length do
    # if new item not in cart, add to cart
    # else update count of existing item
    item_name = cart[i][:item]
    existing_item = find_item_by_name_in_collection(item_name, unique_items)
    
    if !existing_item
      cart[i][:count] = 1
      unique_items.push(cart[i])
    else
      existing_item[:count] += 1
    end
    
    i += 1
  end
  unique_items
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  
  
end

def apply_clearance(cart)
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
