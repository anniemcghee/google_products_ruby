require 'json'
file = File.read("./products.json")

google_data = JSON.parse(file)
items = google_data["items"]

#4.) Find all canon products in the items (careful with case sensitivity).

canon_products = items.select {|item| item['product']['brand'] == 'Canon'}

puts "The following items have the brand Canon:"

canon_products.each_with_index do |item,index|
	puts item
	puts '-' * 10
end