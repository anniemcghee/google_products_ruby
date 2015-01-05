require 'json'
file = File.read("./products.json")

google_data = JSON.parse(file)
items = google_data["items"]

#1.) The kind of results you're are dealing are shopping#products. Go through the items and find all results that have kind of shopping#product. 
#How many are there? Where else is this count information stored in the search results?

#Shows how many total items there are. 
puts items.length

#Prints all items with a kind = shopping#product
shopping_products = items.select {|item| item['kind'] == 'shopping#product'}

shopping_products.each_with_index do |data,index|
	puts data
	puts '-' * 10
end

