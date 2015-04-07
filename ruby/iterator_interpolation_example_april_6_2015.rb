# string formatting
0.upto(5) {|x| puts("Number: %x") % x}
# here the percent sign denotes the formatting
# x is both the iterated number and the formatted string

# string interpolation 
0.upto(5) {|x| puts("Number: #{x}")}