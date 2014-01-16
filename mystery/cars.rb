cars_file = File.open("vehicles", "a+").read

cars_array_mishmashed = cars_file.split("\n\n") # => an array of strings like this:
# [
#   "License Plate DERI5B2\nMake: Nissan\nColor: Gold\nOwner: Cian Adem\nHeight: 5'1\"\nWeight: 149 lbs",
#   "License Plate DERI5B2\nMake: Nissan\nColor: Gold\nOwner: Cian Adem\nHeight: 5'1\"\nWeight: 149 lbs",
# ]

cars_array_2 = cars_array_mishmashed.map{ |car| car.split("\n")} # => an array of arrays of strings, like this:
# [
# 	["License Plate 8IYHI7J", "Make: Ford", "Color: Black", "Owner: Michael Yamamoto", "Height: 5'11\"", "Weight: 206 lbs"],
# 	["License Plate PW4877N", "Make: Ford", "Color: Silver", "Owner: Amanda Ndlovu", "Height: 6'4\"", "Weight: 211 lbs"]
# ]

# each element of cars_array_2 is an [array]
# [array][0] is license plate
# [array][1] is make
# [array][2] is model, etc.


cars_array_hashes = []

cars_array_2.map do |car|
	cars_array_hashes << {car_id: car[0], details: {make: car[1], color: car[2], owner: car[3], height: car[4], weight: car[5]}}
end

puts cars_array_hashes.select { |car_hash| car_hash[:car_id] =~ /L337..9/ && car_hash[:details][:make] =~ /Honda/ && car_hash[:details][:color] =~ /Blue/}

