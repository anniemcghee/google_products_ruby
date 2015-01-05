require 'json'
file = File.read("./products.json")

google_data = JSON.parse(file)
items = google_data["items"]

#6.) Print all the products with their brand, price, and a image link

items.each do |item,index|
	puts item['product']['brand']
	puts item['product']['inventories'][0]['price']
	puts item['product']['images']
	puts '-' * 10
end