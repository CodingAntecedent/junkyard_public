def yolo
	puts "hey"
end

3.times do
	yolo
end


# iterates over numbers 3, 4, and 5
3.upto(5) do |x|
	# for each number up that number plus itself
	x.upto(x + 3) do |y|
		#print that number and a space
		print y, " "
	end
	#then put a new line and proceed to the next number out of 3,4,5
	print "\n"
end

# result
# 3 4 5 6
# 4 5 6 7
# 5 6 7 8

# X is x-axis and y is the y-axis