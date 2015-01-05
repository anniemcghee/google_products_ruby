require 'json'
file = File.read("./products.json")

google_data = JSON.parse(file)
items = google_data["items"]

#2.) Find all items with a backorder availability in inventories.

on_backorder = items.select {|x| x["product"]["inventories"][0]["availability"] === "backorder"}

puts "There are #{on_backorder.length} items on backorder:"

on_backorder.each_with_index do |item,index|
		puts item
		puts '-' * 10
end





#google_data["items"].select {|x| puts "+ #{x["product"]["title"]}" if x["product"]["inventories"][0]["availability"] === "backorder"}