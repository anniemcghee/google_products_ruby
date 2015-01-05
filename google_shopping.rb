#RUBY!! no more semi-colons... ever.

require 'json'
file = File.read("./products.json")

#Welcome to RUBY we use snake case now
#snake case word_word not camel case wordWord
google_data = JSON.parse(file)


#outputs the full object
#puts google_data.inspect


#1.) The kind of results you're are dealing are shopping#products. Go through the items and find all results that have kind of shopping#product. 
#How many are there? Where else is this count information stored in the search results?

#Shows how many total items there are. 
#puts items.length

#Prints all items with a kind = shopping#product
#shopping_products = items.select {|item| item['kind'] == 'shopping#product'}
#puts shopping_products

# ----------------------- DONE

#2.) Find all items with a backorder availability in inventories.

#items.each_with_index do |item,index|
#	if item['inventories'[{'availability' == 'inStock'}]]
#		puts item
#		puts '-' * 10
#	end
#end

#on_backorder = [items['inventories'['availability' == 'inStock']]]}
#puts on_backorder.length
#puts "The following #{on_backorder.length} items are in stock:"
#puts "-" * 10
#puts on_backorder



#3.) Find all items with more than one image link.


#4.) Find all canon products in the items (careful with case sensitivity).
#canon_items = items.select {|item| item['brand'] == 'canon'}
#puts canon_items.title
#5.) Find all items that have product author name of "eBay" and are brand "Canon".

#6.) Print all the products with their brand, price, and a image link