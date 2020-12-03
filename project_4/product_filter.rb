# Product filter
products = [
  {category: :shoes, name: "Special Sandals", brand: "EZ", price: 10.0},
  {category: :clothes, name: "Hatty's Hat", brand: "Hatty's", price: 20.0},
  {category: :electronics, name: "Magnasound", brand: "Maximum", price: 100.0},
  {category: :shoes, name: "High Heels", brand: "Pricey", price: 30.0}
]

def filter(products_arr, filter_type)
  return nil unless filter_type.is_a?(Hash)

  search_filter = filter_type.keys[0]
  filter_value = filter_type.values[0]
  # Iterate and filter by filter_type
  products_arr.select do |product|
    if search_filter != :price
      product[search_filter] == filter_value
    elsif search_filter == :price
      product[search_filter] <= filter_value
    else
      nil
    end
    # case filter_type.keys[0]
    # when :category
    #   product[:category] == filter_value
    # when :name
    #   product[:name] == filter_value
    # when :brand
    #   product[:brand] == filter_value
    # when :price
    #   product[:price] <= filter_value
    # else
    #   nil
    # end
  end
end

p filter(products, { :category => :shoes })
puts "------------"
puts "------------"
p filter(products, { :name => "Magnasound" })
puts "------------"
puts "------------"
p filter(products, { :brand => "EZ" })
puts "------------"
puts "------------"
p filter(products, { :price => 25.0 }) # Max price
