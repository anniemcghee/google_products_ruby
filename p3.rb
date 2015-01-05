require 'json'
file = File.read("./products.json")

google_data = JSON.parse(file)
items = google_data["items"]

#3.) Find all items with more than one image link.

multiple_images = items.select {|item| item['product']['images'].length > 1}

puts "There are #{multiple_images.length} items that have more than one image:"

multiple_images.each_with_index do |item,index|
	puts item
	puts '-' * 10
end