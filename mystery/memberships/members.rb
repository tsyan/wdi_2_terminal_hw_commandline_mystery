
member_names_array = []
member_names_file = File.open("relevant_memberships.txt", "a+")

member_names_file.each do |line|
	member_names_array << line
end

counts = Hash.new(0)

# puts counts # => empty hash

member_names_array.each do |name|
	counts[name] += 1
end

# puts counts # => member name, # of occurences

puts counts.select{ |key, value| value == 4}

