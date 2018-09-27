class Palindrom
	def input()
		puts "Enter string"
		@s = gets.chomp
	end

	def test()
		if @s == @s.reverse
			puts "String '#{@s}' is a palindrom"
		else
			puts "String '#{@s}' isn't a palindrom"
		end
	end
end

pa = Palindrom.new
pa.input
pa.test

