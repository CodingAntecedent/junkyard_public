class NameAnalyzer

	def initialize
		@name = ""
	end

	def get_name
		puts "What is your name? "
		@name = gets.chomp
	end

	def count
		character_count = @name.length
		puts "Your name has #{character_count} characters in it."
		if character_count >= 25
			puts "and that is pretty damn long"
		else
			puts "and that seems average"
		end
	end
end

myname = NameAnalyzer.new
myname.get_name
myname.count