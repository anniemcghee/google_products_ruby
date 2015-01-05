require 'json'
file = File.read("./products.json")

google_data = JSON.parse(file)
items = google_data["items"]

#5.) Find all items that have product author name of "eBay" and 
#are brand "Canon".

canon_ebay_products = items.select {|item| item['product']['brand'] == 'Canon' and item['product']['author']['name'] == 'eBay'}

puts "The following #{canon_ebay_products.length} items have the brand Canon and product author eBay:"

canon_ebay_products.each_with_index do |item,index|
	puts item
	puts '-' * 10
end